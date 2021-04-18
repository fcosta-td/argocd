ArgoCD Container

ARG SOPS_VERSION="v3.7.0"
ARG HELM_SECRETS_VERSION="3.6.1"
ARG SOPS_PGP_FP="013D26E064C0758596AE93A986A1183C1DFC20F4"

How to Build and Push
docker build -t fcostatd/argocd:2.0.1 .
docker push fcostatd/argocd:2.0.1
