FROM centos:7
RUN yum install -y tar; mkdir /opt/grafana
COPY grafana-* /opt/grafana/
RUN cd /opt/grafana &&\
tar -xvf grafana-*.tar.gz -C /opt/grafana/
ENTRYPOINT ["/opt/grafana/grafana-4.1.2-1486989747/bin/grafana-server"]
CMD ["-homepath", "/opt/grafana/grafana-4.1.2-1486989747/", "web"]
