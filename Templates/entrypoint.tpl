ENV PATH="/root/.anyenv/envs/goenv/bin:$PATH"
ENV GOENV_ROOT=/root/.anyenv/envs/goenv

WORKDIR /root

ENTRYPOINT ["/bin/bash"]
