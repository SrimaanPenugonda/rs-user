FROM        node:12
RUN         mkdir /app
WORKDIR     /app   #cd command
COPY        server.js /app/server.js
COPY        package.json /app/package.json
RUN         npm install
CMD         ["node","server.js"] #systemd file also exec these (ExecStart)

