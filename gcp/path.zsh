GCLOUD_HOME=$(gcloud info --format="value(installation.sdk_root)")
export PATH=$GCLOUD_HOME/bin:$PATH
