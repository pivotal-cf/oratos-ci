PROJECT_NAME=oratos
CLUSTER_NAME="$PROJECT_NAME-ci"
CLUSTER_SIZE=6
CLUSTER_ZONE=us-central1-a
CLUSTER_VERSION=1.10
NAMESPACE_NAME="$CLUSTER_NAME"
LASTPASS_SECRETS_PATH="Shared-CF-Oratos/concourse-secrets.yml"
LASTPASS_X509_PATH='Shared-Opensource Common/*.ci.cf-app.com SSL key & certs (RSA-2048)'
VALUES="
concourse:
  externalURL: https://oratos.ci.cf-app.com
  githubAuth:
    enabled: true
    user: jasonkeene,wfernandes,dennyzhang
web:
  service:
    type: NodePort
  ingress:
    annotations:
      kubernetes.io/ingress.allow-http: false
    enabled: true
    hosts:
    - oratos.ci.cf-app.com
    tls:
    - secretName: concourse-web-tls
      hosts:
      - oratos.ci.cf-app.com
"