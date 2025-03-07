PROMETHEUS_PUMP_PORT=9091;
PROMETHEUS_SERVICE_PORT=9080;
PROMETHEUS_PUMP_PATH="/metrics";
prometheusReleaseName="prometheus";
prometheusDeploymentPath="src/deployments/prometheus";

if [ -z "$prometheusRegistered" ]; then
  prometheusRegistered=true;
  source "$prometheusDeploymentPath/openshift.sh";
  source "$prometheusDeploymentPath/main.sh";
fi
