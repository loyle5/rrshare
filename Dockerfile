FROM centos:7

ADD http://appdown.rrys.tv/rrshareweb_centos7.tar.gz /rrshareweb.tar.gz

RUN tar -xzf /rrshareweb.tar.gz && rm /rrshareweb.tar.gz

VOLUME ["/opt/work/store"]
EXPOSE 3001

ENTRYPOINT [ "/rrshareweb/rrshareweb" ]