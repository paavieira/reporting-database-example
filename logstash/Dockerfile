FROM docker.elastic.co/logstash/logstash-oss:6.3.0

ADD pipeline/ /usr/share/logstash/pipeline/
ADD jdbc/ /usr/share/logstash/jdbc/

EXPOSE 5044 9600 8080