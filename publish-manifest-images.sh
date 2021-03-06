#!/bin/sh
set -e -x

# set 'docker manifest' enabled and login before run this script

# quay.io/coreos/etcd:v3.2.24
docker pull quay.io/coreos/etcd:v3.2.24
docker tag quay.io/coreos/etcd:v3.2.24 rancher/coreos-etcd:v3.2.24-amd64
docker pull quay.io/coreos/etcd:v3.2.24-arm64
docker tag quay.io/coreos/etcd:v3.2.24-arm64 rancher/coreos-etcd:v3.2.24-arm64
docker push rancher/coreos-etcd:v3.2.24-amd64
docker push rancher/coreos-etcd:v3.2.24-arm64
docker manifest create rancher/coreos-etcd:v3.2.24 rancher/coreos-etcd:v3.2.24-amd64 rancher/coreos-etcd:v3.2.24-arm64
docker manifest annotate rancher/coreos-etcd:v3.2.24 rancher/coreos-etcd:v3.2.24-amd64 --arch amd64
docker manifest annotate rancher/coreos-etcd:v3.2.24 rancher/coreos-etcd:v3.2.24-arm64 --arch arm64
docker manifest push -p rancher/coreos-etcd:v3.2.24

# gcr.io/google_containers/k8s-dns-kube-dns:1.14.13
docker pull gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.13 rancher/k8s-dns-kube-dns:1.14.13-amd64
docker pull gcr.io/google_containers/k8s-dns-kube-dns-arm64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-kube-dns-arm64:1.14.13 rancher/k8s-dns-kube-dns:1.14.13-arm64
docker push rancher/k8s-dns-kube-dns:1.14.13-amd64
docker push rancher/k8s-dns-kube-dns:1.14.13-arm64
docker manifest create rancher/k8s-dns-kube-dns:1.14.13 rancher/k8s-dns-kube-dns:1.14.13-amd64 rancher/k8s-dns-kube-dns:1.14.13-arm64
docker manifest annotate rancher/k8s-dns-kube-dns:1.14.13 rancher/k8s-dns-kube-dns:1.14.13-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-kube-dns:1.14.13 rancher/k8s-dns-kube-dns:1.14.13-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-kube-dns:1.14.13

#gcr.io/google_containers/k8s-dns-dnsmasq-nanny:1.14.13
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.13 rancher/k8s-dns-dnsmasq-nanny:1.14.13-amd64
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-arm64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-dnsmasq-nanny-arm64:1.14.13 rancher/k8s-dns-dnsmasq-nanny:1.14.13-arm64
docker push rancher/k8s-dns-dnsmasq-nanny:1.14.13-amd64
docker push rancher/k8s-dns-dnsmasq-nanny:1.14.13-arm64
docker manifest create rancher/k8s-dns-dnsmasq-nanny:1.14.13 rancher/k8s-dns-dnsmasq-nanny:1.14.13-amd64 rancher/k8s-dns-dnsmasq-nanny:1.14.13-arm64
docker manifest annotate rancher/k8s-dns-dnsmasq-nanny:1.14.13 rancher/k8s-dns-dnsmasq-nanny:1.14.13-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-dnsmasq-nanny:1.14.13 rancher/k8s-dns-dnsmasq-nanny:1.14.13-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-dnsmasq-nanny:1.14.13

#gcr.io/google_containers/k8s-dns-sidecar:1.14.13
docker pull gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.13 rancher/k8s-dns-sidecar:1.14.13-amd64
docker pull gcr.io/google_containers/k8s-dns-sidecar-arm64:1.14.13
docker tag gcr.io/google_containers/k8s-dns-sidecar-arm64:1.14.13 rancher/k8s-dns-sidecar:1.14.13-arm64
docker push rancher/k8s-dns-sidecar:1.14.13-amd64
docker push rancher/k8s-dns-sidecar:1.14.13-arm64
docker manifest create rancher/k8s-dns-sidecar:1.14.13 rancher/k8s-dns-sidecar:1.14.13-amd64 rancher/k8s-dns-sidecar:1.14.13-arm64
docker manifest annotate rancher/k8s-dns-sidecar:1.14.13 rancher/k8s-dns-sidecar:1.14.13-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-sidecar:1.14.13 rancher/k8s-dns-sidecar:1.14.13-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-sidecar:1.14.13

#gcr.io/google_containers/cluster-proportional-autoscaler:1.0.0
docker pull gcr.io/google_containers/cluster-proportional-autoscaler-amd64:1.0.0
docker tag gcr.io/google_containers/cluster-proportional-autoscaler-amd64:1.0.0 rancher/cluster-proportional-autoscaler:1.0.0-amd64
docker pull gcr.io/google_containers/cluster-proportional-autoscaler-arm64:1.0.0
docker tag gcr.io/google_containers/cluster-proportional-autoscaler-arm64:1.0.0 rancher/cluster-proportional-autoscaler:1.0.0-arm64
docker push rancher/cluster-proportional-autoscaler:1.0.0-amd64
docker push rancher/cluster-proportional-autoscaler:1.0.0-arm64
docker manifest create rancher/cluster-proportional-autoscaler:1.0.0 rancher/cluster-proportional-autoscaler:1.0.0-amd64 rancher/cluster-proportional-autoscaler:1.0.0-arm64
docker manifest annotate rancher/cluster-proportional-autoscaler:1.0.0 rancher/cluster-proportional-autoscaler:1.0.0-amd64 --arch amd64
docker manifest annotate rancher/cluster-proportional-autoscaler:1.0.0 rancher/cluster-proportional-autoscaler:1.0.0-arm64 --arch arm64
docker manifest push -p rancher/cluster-proportional-autoscaler:1.0.0

#quay.io/coreos/flannel:v0.10.0
docker pull quay.io/coreos/flannel:v0.10.0
docker tag quay.io/coreos/flannel:v0.10.0 rancher/coreos-flannel:v0.10.0-amd64
docker pull quay.io/coreos/flannel:v0.10.0-arm64
docker tag quay.io/coreos/flannel:v0.10.0-arm64 rancher/coreos-flannel:v0.10.0-arm64
docker push rancher/coreos-flannel:v0.10.0-amd64
docker push rancher/coreos-flannel:v0.10.0-arm64
docker manifest create rancher/coreos-flannel:v0.10.0 rancher/coreos-flannel:v0.10.0-amd64 rancher/coreos-flannel:v0.10.0-arm64
docker manifest annotate rancher/coreos-flannel:v0.10.0 rancher/coreos-flannel:v0.10.0-amd64 --arch amd64
docker manifest annotate rancher/coreos-flannel:v0.10.0 rancher/coreos-flannel:v0.10.0-arm64 --arch arm64
docker manifest push -p rancher/coreos-flannel:v0.10.0

#gcr.io/google_containers/pause:3.1
docker pull gcr.io/google_containers/pause-amd64:3.1
docker tag gcr.io/google_containers/pause-amd64:3.1 rancher/pause:3.1-amd64
docker pull gcr.io/google_containers/pause-arm64:3.1
docker tag gcr.io/google_containers/pause-arm64:3.1 rancher/pause:3.1-arm64
docker push rancher/pause:3.1-amd64
docker push rancher/pause:3.1-arm64
docker manifest create rancher/pause:3.1 rancher/pause:3.1-amd64 rancher/pause:3.1-arm64
docker manifest annotate rancher/pause:3.1 rancher/pause:3.1-amd64 --arch amd64
docker manifest annotate rancher/pause:3.1 rancher/pause:3.1-arm64 --arch arm64
docker manifest push -p rancher/pause:3.1

#k8s.gcr.io/defaultbackend:1.4
docker pull k8s.gcr.io/defaultbackend-amd64:1.4
docker tag k8s.gcr.io/defaultbackend-amd64:1.4 rancher/nginx-ingress-controller-defaultbackend:1.4-amd64
docker pull k8s.gcr.io/defaultbackend-arm64:1.4
docker tag k8s.gcr.io/defaultbackend-arm64:1.4 rancher/nginx-ingress-controller-defaultbackend:1.4-arm64
docker push rancher/nginx-ingress-controller-defaultbackend:1.4-amd64
docker push rancher/nginx-ingress-controller-defaultbackend:1.4-arm64
docker manifest create rancher/nginx-ingress-controller-defaultbackend:1.4 rancher/nginx-ingress-controller-defaultbackend:1.4-amd64 rancher/nginx-ingress-controller-defaultbackend:1.4-arm64
docker manifest annotate rancher/nginx-ingress-controller-defaultbackend:1.4 rancher/nginx-ingress-controller-defaultbackend:1.4-amd64 --arch amd64
docker manifest annotate rancher/nginx-ingress-controller-defaultbackend:1.4 rancher/nginx-ingress-controller-defaultbackend:1.4-arm64 --arch arm64
docker manifest push -p rancher/nginx-ingress-controller-defaultbackend:1.4

#gcr.io/google_containers/metrics-server:v0.3.1
docker pull gcr.io/google_containers/metrics-server-amd64:v0.3.1
docker tag gcr.io/google_containers/metrics-server-amd64:v0.3.1 rancher/metrics-server:v0.3.1-amd64
docker pull gcr.io/google_containers/metrics-server-arm64:v0.3.1
docker tag gcr.io/google_containers/metrics-server-arm64:v0.3.1 rancher/metrics-server:v0.3.1-arm64
docker push rancher/metrics-server:v0.3.1-amd64
docker push rancher/metrics-server:v0.3.1-arm64
docker manifest create rancher/metrics-server:v0.3.1 rancher/metrics-server:v0.3.1-amd64 rancher/metrics-server:v0.3.1-arm64
docker manifest annotate rancher/metrics-server:v0.3.1 rancher/metrics-server:v0.3.1-amd64 --arch amd64
docker manifest annotate rancher/metrics-server:v0.3.1 rancher/metrics-server:v0.3.1-arm64 --arch arm64
docker manifest push -p rancher/metrics-server:v0.3.1

#gcr.io/google_containers/k8s-dns-kube-dns:1.15.0
docker pull gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.15.0 rancher/k8s-dns-kube-dns:1.15.0-amd64
docker pull gcr.io/google_containers/k8s-dns-kube-dns-arm64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-kube-dns-arm64:1.15.0 rancher/k8s-dns-kube-dns:1.15.0-arm64
docker push rancher/k8s-dns-kube-dns:1.15.0-amd64
docker push rancher/k8s-dns-kube-dns:1.15.0-arm64
docker manifest create rancher/k8s-dns-kube-dns:1.15.0 rancher/k8s-dns-kube-dns:1.15.0-amd64 rancher/k8s-dns-kube-dns:1.15.0-arm64
docker manifest annotate rancher/k8s-dns-kube-dns:1.15.0 rancher/k8s-dns-kube-dns:1.15.0-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-kube-dns:1.15.0 rancher/k8s-dns-kube-dns:1.15.0-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-kube-dns:1.15.0

#gcr.io/google_containers/k8s-dns-dnsmasq-nanny:1.15.0
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.15.0 rancher/k8s-dns-dnsmasq-nanny:1.15.0-amd64
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-arm64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-dnsmasq-nanny-arm64:1.15.0 rancher/k8s-dns-dnsmasq-nanny:1.15.0-arm64
docker push rancher/k8s-dns-dnsmasq-nanny:1.15.0-amd64
docker push rancher/k8s-dns-dnsmasq-nanny:1.15.0-arm64
docker manifest create rancher/k8s-dns-dnsmasq-nanny:1.15.0 rancher/k8s-dns-dnsmasq-nanny:1.15.0-amd64 rancher/k8s-dns-dnsmasq-nanny:1.15.0-arm64
docker manifest annotate rancher/k8s-dns-dnsmasq-nanny:1.15.0 rancher/k8s-dns-dnsmasq-nanny:1.15.0-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-dnsmasq-nanny:1.15.0 rancher/k8s-dns-dnsmasq-nanny:1.15.0-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-dnsmasq-nanny:1.15.0

#gcr.io/google_containers/k8s-dns-sidecar:1.15.0
docker pull gcr.io/google_containers/k8s-dns-sidecar-amd64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-sidecar-amd64:1.15.0 rancher/k8s-dns-sidecar:1.15.0-amd64
docker pull gcr.io/google_containers/k8s-dns-sidecar-arm64:1.15.0
docker tag gcr.io/google_containers/k8s-dns-sidecar-arm64:1.15.0 rancher/k8s-dns-sidecar:1.15.0-arm64
docker push rancher/k8s-dns-sidecar:1.15.0-amd64
docker push rancher/k8s-dns-sidecar:1.15.0-arm64
docker manifest create rancher/k8s-dns-sidecar:1.15.0 rancher/k8s-dns-sidecar:1.15.0-amd64 rancher/k8s-dns-sidecar:1.15.0-arm64
docker manifest annotate rancher/k8s-dns-sidecar:1.15.0 rancher/k8s-dns-sidecar:1.15.0-amd64 --arch amd64
docker manifest annotate rancher/k8s-dns-sidecar:1.15.0 rancher/k8s-dns-sidecar:1.15.0-arm64 --arch arm64
docker manifest push -p rancher/k8s-dns-sidecar:1.15.0

