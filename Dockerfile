# Start with an image with openjdk <version> built in
FROM eclipse-temurin:17 

# Declare the mountpoint for server data
VOLUME [ "/data" ]

# Install deps
RUN apt-get update && apt-get upgrade -y
RUN apt-get install curl -y

# Define and add user
ARG user=minecraft
ARG group=minecraft
ARG uid=1005
ARG gid=1005

RUN groupadd -g ${gid} ${group}
RUN useradd -u ${uid} -g ${group} -s /bin/sh ${user}

# Double check perms
RUN mkdir --mode=a=rwx /data

# Set user
USER minecraft

# Run server launch script on server start
ENTRYPOINT [ "/data/start.sh" ]
