./kubectl-karmada init --crds ./data/crds.tar.gz --cert-external-ip 10.23.22.116 --etcd-image harbor.ats.io/etc/k8s.gcr.io/etcd:3.5.1-0 --etcd-init-image harbor.ats.io/etc/docker.io/alpine:3.14.3 --karmada-aggregated-apiserver-image harbor.ats.io/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-aggregated-apiserver:latest --karmada-apiserver-image harbor.ats.io/etc/k8s.gcr.io/kube-apiserver:v1.21.7 --karmada-controller-manager-image harbor.ats.io/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-controller-manager:latest --karmada-kube-controller-manager-image harbor.ats.io/etc/k8s.gcr.io/kube-controller-manager:v1.21.7 --karmada-scheduler-image harbor.ats.io/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-scheduler:latest --karmada-webhook-image harbor.ats.io/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-webhook:latest

# 这里增加就错误，因为kubeconfig的地址都是127
#./kubectl-karmada -v 6 join kind-kind-k8s-1-23 --kubeconfig /etc/karmada/karmada-apiserver.config

KUBECONFIG=~/.kube/config:/etc/karmada/karmada-apiserver.config kubectl config view --flatten > /tmp/config && mv -f /tmp/config ~/.kube/config

