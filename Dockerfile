FROM jvdneste/alpine-supervisor

RUN apk --no-cache add rsyslog
ADD ./rsyslog.conf /etc/rsyslog.conf
ADD ./rsyslog.sv.conf /etc/supervisor/conf.d/rsyslog.sv.conf

CMD ["supervisord", "-c", "/etc/supervisor/supervisor.conf"]
