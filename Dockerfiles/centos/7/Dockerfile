FROM centos:7

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		ca-certificates-2020.2.41 \
		curl-7.29.0 \
		git-1.8.3.1 \
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

