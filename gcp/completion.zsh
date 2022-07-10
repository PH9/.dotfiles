GCLOUD_HOME=$(gcloud info --format="value(installation.sdk_root)")
. $GCLOUD_HOME/path.zsh.inc
. $GCLOUD_HOME/completion.zsh.inc
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
