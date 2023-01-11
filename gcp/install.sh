#!/usr/bin/env bash
set -euo pipefail

brew install google-cloud-sdk
gcloud components install cloud_sql_proxy
gcloud components install kubectl
