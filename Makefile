include scripts/*

setup-tools: brew-common python-common k8s-docker-pull

k8s-up: k8s-create-cluster k8s-load-docker k8s-preload-fluxcd

k8s-run: k8s-fluxcd-init k8s-init-telepresence

k8s-down: k8s-delete-telepresence k8s-delete-cluster