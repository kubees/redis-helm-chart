install: dependencies
	helm install redis ./redis-helm-chart -f redis-helm-chart/values.yaml -n databases --create-namespace
uninstall:
	helm uninstall redis -n databases
template:
	helm template redis ./redis-helm-chart
dependencies:
	helm dependency update ./redis-helm-chart