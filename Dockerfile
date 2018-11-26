FROM diuis/docker-debian9-git_wget

RUN apt-get update && apt-get install -y cmake
RUN mkdir emsdk && chown appuser emsdk

USER appuser

RUN git clone https://github.com/juj/emsdk.git && ./emsdk/emsdk install latest
