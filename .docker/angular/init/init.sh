DIR_NODE_MODULES="/usr/src/app/node_modules";

if [ "$ANGULAR_DO_INSTALL" = "true" ]; then
  if [ -z "$(ls -A /usr/src/app)" ]; then
      if [ -z "${APP_REPOSITORY}" ]; then
          ng new "${APP_NAME}" --directory ./
      else
          git clone "${APP_REPOSITORY}" .
      fi
  fi
fi

if [ ! -d "$DIR_NODE_MODULES" ]; then
    npm install
fi

ng serve --host="${ANGULAR_HOST}" --port "${ANGULAR_INSIDE_PORT}"
