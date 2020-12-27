# Always use login bash shell
SHELL := /bin/bash --login

# If not set, fetch the chart version from the Chart.yaml file
VERSION ?= $$(grep 'version:' cert-manager-issuer/Chart.yaml | awk -F  ":" '{print $$2}' | xargs)

# Build Helm Chart
build_chart:
	@echo "Building the Helm Chart ..."; \
	echo "Chart version = ${VERSION}"; \
	helm package cert-manager-issuer/ --version "${VERSION}"

# Build & Push Helm Chart
push_chart:
	@echo "Building & Pushing the Helm Chart ..."; \
	helm repo add helm_repo "https://${HELM_REPO}"; \
	helm push cert-manager-issuer-"${VERSION}".tgz helm_repo
