FROM centos:7
RUN yum install -y tar; mkdir /opt/grafana

ENV GRAF_VERSION 4.1.2-1486989747

RUN     yum install -y tar; mkdir /opt/grafana

COPY    grafana-* /opt/grafana/

RUN     cd /opt/grafana &&\
        tar -xvf grafana-${GRAF_VERSION}.tar.gz -C /opt/grafana/ &&\
        mv /opt/grafana/grafana-${GRAF_VERSION}/* /opt/grafana/

ENTRYPOINT ["/opt/grafana/bin/grafana-server"]

CMD ["-homepath", "/opt/grafana/", "web"]

