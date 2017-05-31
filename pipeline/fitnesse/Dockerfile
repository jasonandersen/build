FROM oracle-jdk8

ENV FITNESSE_HOME /opt/fitnesse

ARG user=fitnesse
ARG group=fitnesse
ARG uid=888
ARG gid=888

RUN apt-get update && apt-get install -y git zip && rm -rf /var/lib/apt/lists/*

# Run Fitnesse from the fitnesse user
RUN groupadd -g ${gid} ${group} && \
    useradd -d "$FITNESSE_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

WORKDIR ${FITNESSE_HOME}

RUN wget -O fitnesse-standalone.jar "http://fitnesse.org/fitnesse-standalone.jar?responder=releaseDownload&release=20160618"
RUN chown ${user} ${FITNESSE_HOME}/fitnesse-standalone.jar

USER ${user}

CMD java -jar ./fitnesse-standalone.jar -p 8001