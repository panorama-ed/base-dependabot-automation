#!/usr/bin/env bash

GIT_RAW_BASE="https://raw.githubusercontent.com/panorama-ed/base-dependabot-automation/main"

REMOTE_WORKFLOW_PATH="_github/workflows"
declare -a WORKFLOW_FILE="dependabot-prs.yml"

REMOTE_DEPENDABOT_PATH="_github"
declare -a DEPENDABOT_FILE="dependabot.yml"

function install_files {
  REMOTE_PATH=$1
  LOCAL_PATH=${REMOTE_PATH/_/.}
  shift

  FILES=$@

  [[ ! -d $LOCAL_PATH ]] && mkdir -p $LOCAL_PATH

  for f in ${FILES[@]}; do
    LOCAL_FILE="$LOCAL_PATH/$f"
    REMOTE_URL="${GIT_RAW_BASE}/$REMOTE_PATH/$f"
    curl -s -o $LOCAL_FILE $REMOTE_URL
  done
}

install_files $REMOTE_WORKFLOW_PATH $WORKFLOW_FILE
install_files $REMOTE_DEPENDABOT_PATH $DEPENDABOT_FILE
