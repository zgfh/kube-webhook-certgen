if [[ "$1" == "" ]];then
  echo "$0 [ip]"
  echo "eg: 生成 test.ats.io 证书: $0 test.ats.io"
  echo "eg: 生成 *.test.ats.io 证书:  $0 *.test.ats.io"
  exit 1
fi
domain=${1}
test -f ca.key || openssl genrsa -out ca.key 1024
test -f ca.csr || openssl req -new -key ca.key -out ca.csr -subj "/C=CN/ST=GD/L=SZ/O=test/OU=test/CN=daocloud/emailAddress=etc@daocloud.io"
test -f ca.crt || openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt

rm -rf $domain
mkdir $domain
cd $domain
openssl genrsa -out server.key 1024
openssl req -new -key server.key -out server.csr -subj "/C=CN/ST=GD/L=SZ/O=test/OU=test/CN=$domain/emailAddress=etc@daocloud.io"
openssl x509 -req -CA ../ca.crt -CAkey ../ca.key -CAcreateserial -in server.csr -out server.crt

cat server.crt > fullchain.cer
cat ../ca.crt >> fullchain.cer

echo "证书在 $domain 目录"
echo "私钥: server.key"
echo "证书链: fullchain.cer"
