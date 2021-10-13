FROM amazonlinux:2

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2021.2.50 \
		curl-7.76.1 \
		git-2.32.0 \
		tar-1.26 \
		yum-plugin-remove-with-leaves-1.1.31 \
		&& \
	git clone https://github.com/syndbg/goenv.git ~/.goenv && \
	echo 'export GOENV_ROOT=${HOME}/.goenv' >> ~/.bashrc && \
	echo 'export PATH=${GOENV_ROOT}/bin:${PATH}' >> ~/.bashrc && \
	echo 'eval "$(goenv init -)"' >> ~/.bashrc && \
	echo 'export PATH=${GOROOT}/bin:${PATH}' >> ~/.bashrc && \
	echo 'export PATH=${GOPATH}/bin:${PATH}' >> ~/.bashrc && \
	yum remove -y --remove-leaves \
		git \
		&& \
	yum clean all && \
	rm -rf /var/cache/yum

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

