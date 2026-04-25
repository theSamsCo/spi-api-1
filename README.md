# Application

> Managed by the Internal Developer Platform (IDP).

## Getting started

```bash
# build
make build

# test
make test
```

## Structure

```
.
├── cmd/          # application entry-points
├── k8s/          # raw Kubernetes manifests (optional, outside Helm)
└── Dockerfile
```

## GitOps

Helm values and ArgoCD manifests live in the companion `-gitops` repository,
managed automatically by IDP. Do not edit those files manually.
