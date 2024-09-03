FROM rhel9/rsyslog
RUN dnf update -y
RUN dnf install rsyslog-imhttp -y
ADD rsyslog.conf /etc/rsyslog.conf