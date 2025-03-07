KIBANA_SERVICE_PORT=5601;
elasticsearchKibanaReleaseName="elasticsearch-kibana";
elasticsearchKibanaDeploymentPath="src/deployments/elasticsearch-kibana";

if [ -z "$elasticsearchKibanaRegistered" ]; then
  elasticsearchKibanaRegistered=true;
  source "src/deployments/elasticsearch/main.safe.sh";
  source "$elasticsearchKibanaDeploymentPath/openshift.sh";
  source "$elasticsearchKibanaDeploymentPath/main.sh";
  source "src/deployments/k6-slo-traffic/main.safe.sh";
fi
