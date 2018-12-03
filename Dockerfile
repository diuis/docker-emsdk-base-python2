FROM diuis/docker-debian9-git_wget_python2:v1.0.0

RUN apt-get update && apt-get install --no-install-recommends -y cmake apt-utils ca-certificates
RUN mkdir emsdk && chown appuser emsdk

USER appuser

RUN git clone https://github.com/juj/emsdk.git && ./emsdk/emsdk install latest
