FROM dragonwell-registry.cn-hangzhou.cr.aliyuncs.com/dragonwell/dragonwell:11
WORKDIR /
COPY ./opensergo-dashboard-server/target/opensergo-dashboard.jar  /app.jar

ENV SERVER_PORT 8080
EXPOSE ${SERVER_PORT}

ENTRYPOINT ["sh", "-c", "/usr/bin/java -jar /app.jar"]
