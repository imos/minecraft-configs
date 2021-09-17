FROM itzg/minecraft-server

COPY plugins/*.jar /plugins/
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENV EULA=TRUE
ENV TYPE=SPIGOT
ENV VERSION=1.17.1
ENV SEED=64971835648254
ENV MAX_MEMORY=10G
ENV MAX_PLAYERS=100

ENTRYPOINT ["bash", "/usr/local/bin/entrypoint.sh"]
