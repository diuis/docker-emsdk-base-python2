FROM diuis/docker-debian9-git_wget_python3_nodejs

RUN apt-get update
RUN mkdir emsdk && chown appuser emsdk

USER appuser

RUN git clone https://github.com/juj/emsdk.git
