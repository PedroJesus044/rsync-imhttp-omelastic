FROM rhel9/rsyslog
RUN dnf update -y
RUN wget -P /etc/yum.repos.d http://rpms.adiscon.com/v8-stable-daily/rsyslog-daily-rhel.repo
RUN dnf install rsyslog-imhttp -y
ADD rsyslog.conf /etc/rsyslog.conf