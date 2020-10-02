FROM centos:7

ADD http://appdown.rrys.tv/rrshareweb_linux_2.20.tar.gz /rrshareweb.tar.gz

RUN tar -xzf /rrshareweb.tar.gz && rm /rrshareweb.tar.gz

VOLUME ["/opt/work/rrshareweb/data"]
EXPOSE 3001 6714

ENTRYPOINT [ "/rrshareweb/rrshareweb" ]
