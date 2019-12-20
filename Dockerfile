FROM deepexi/java:v0.0.1

WORKDIR /home

COPY ./deepexi-dubbo-provider/target/app.jar /home
COPY ./filebeat.yml /usr/share/filebeat/filebeat.yml

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
