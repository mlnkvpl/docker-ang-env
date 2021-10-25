if [ -z "$(ls -A /usr/src/app)" ]; then
  cp -avr /tmp/scripts/base/* /usr/src/app
fi

node server.js