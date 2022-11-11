install:
	helm dependency update ./redis-helm-chart
	helm install playlist ./redis-helm-chart -f redis-helm-chart/values.yaml -n databases --create-namespace
uninstall:
	helm uninstall playlist -n databases
template:
	helm template playlist ./redis-helm-chart
dependencies:
	helm dependency update ./redis-helm-chart