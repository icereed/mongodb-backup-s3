FROM mongo

RUN apt-get update && apt-get -y install cron awscli && rm -rf /var/lib/apt/lists/*

ENV CRON_TIME="0 3 * * *" \
  TZ=US/Eastern \
  CRON_TZ=US/Eastern

ADD run.sh /run.sh
CMD /run.sh
