FROM ubuntu:18.04

# hadolint ignore=SC2016
RUN apt-get update && \ 
	apt-get -y --no-install-recommends install \ 
		ca-certificates=20210119~18.04.1 \ 
		curl=7.58.0-2ubuntu3.13 \ 
		git=1:2.17.1-1ubuntu0.8 \
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
	apt-get -y auto-remove && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]
