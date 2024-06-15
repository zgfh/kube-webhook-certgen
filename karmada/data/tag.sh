      docker tag k8s.gcr.io/etcd:3.5.1-0 10.23.101.59:5000/etc/k8s.gcr.io/etcd:3.5.1-0
      docker push 10.23.101.59:5000/etc/k8s.gcr.io/etcd:3.5.1-0
      docker tag docker.io/alpine:3.14.3 10.23.101.59:5000/etc/docker.io/alpine:3.14.3
      docker push 10.23.101.59:5000/etc/docker.io/alpine:3.14.3
      docker tag swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-aggregated-apiserver:latest 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-aggregated-apiserver:latest
      docker push 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-aggregated-apiserver:latest
      docker tag k8s.gcr.io/kube-apiserver:v1.21.7 10.23.101.59:5000/etc/k8s.gcr.io/kube-apiserver:v1.21.7
      docker push 10.23.101.59:5000/etc/k8s.gcr.io/kube-apiserver:v1.21.7
      docker tag swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-controller-manager:latest 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-controller-manager:latest
      docker push 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-controller-manager:latest
      docker tag k8s.gcr.io/kube-controller-manager:v1.21.7 10.23.101.59:5000/etc/k8s.gcr.io/kube-controller-manager:v1.21.7
      docker push 10.23.101.59:5000/etc/k8s.gcr.io/kube-controller-manager:v1.21.7
      docker tag swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-scheduler:latest 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-scheduler:latest
      docker push 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-scheduler:latest
      docker tag swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-webhook:latest 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-webhook:latest
      docker push 10.23.101.59:5000/etc/swr.ap-southeast-1.myhuaweicloud.com/karmada/karmada-webhook:latest
