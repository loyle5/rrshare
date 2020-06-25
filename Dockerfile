FROM centos:7

ADD http://appdown.rrys.tv/rrshareweb_linux.tar.gz /rrshareweb.tar.gz

RUN tar -xzf /rrshareweb.tar.gz && rm /rrshareweb.tar.gz

VOLUME ["/opt/work/rrshareweb/data"]
EXPOSE 3001

ENTRYPOINT [ "/rrshareweb/rrshareweb" ]
