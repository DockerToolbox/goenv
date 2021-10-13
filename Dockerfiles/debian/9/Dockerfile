FROM debian:stretch

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		ca-certificates=20200601~deb9u2 \
		curl=7.52.1-5+deb9u16 \
		git=1:2.11.0-3+deb9u7 \
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

