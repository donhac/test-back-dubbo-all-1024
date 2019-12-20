FROM deepexi/java:v0.0.1

WORKDIR /home

COPY ./deepexi-dubbo-provider/target/app.jar /home
COPY ./deepexi-dubbo-provider/target/app.jar /home

ADD ./filebeat.yml /usr/share/filebeat/filebeat.yml

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
