DIR_NODE_MODULES="/usr/src/app/node_modules";
export NODE_OPTIONS="--max-old-space-size=8192"

if [ "$ANGULAR_DO_INSTALL" = "true" ]; then
  if [ -z "$(ls -A /usr/src/app)" ]; then
      if [ -z "${ANGULAR_APP_REPOSITORYY}" ]; then
          ng new "${APP_NAME}" "${ANGULAR_NG_NEW_PARAMETERS}" --directory ./ 
      else
          git clone "${ANGULAR_APP_REPOSITORY}" .
      fi
  fi
fi

if [ ! -d "$DIR_NODE_MODULES" ]; then
    npm install
fi

if [ ! -z "${ANGULAR_ADDITIONAL_COMMAND}" ]; then
    eval $ANGULAR_ADDITIONAL_COMMAND;
fi

ng serve --host="${ANGULAR_HOST}" --port "${ANGULAR_INSIDE_PORT}" --disable-host-check
