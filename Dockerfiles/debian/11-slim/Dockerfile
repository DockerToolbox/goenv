FROM debian:bullseye-slim

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20210119 \
		curl=7.74.0-1.2 \
		git=1:2.30.2-1 \
		&& \
	git clone https://github.com/syndbg/goenv.git ~/.goenv && \
	echo 'export GOENV_ROOT=${HOME}/.goenv' >> ~/.bashrc && \
	echo 'export PATH=${GOENV_ROOT}/bin:${PATH}' >> ~/.bashrc && \
	echo 'eval "$(goenv init -)"' >> ~/.bashrc && \
	echo 'export PATH=${GOROOT}/bin:${PATH}' >> ~/.bashrc && \
	echo 'export PATH=${GOPATH}/bin:${PATH}' >> ~/.bashrc && \
	apt-get -y remove --purge \
		git \
		&& \
	apt-get -y autoremove && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

