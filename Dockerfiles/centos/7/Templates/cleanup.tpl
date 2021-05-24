	yum remove -y --remove-leaves \
		git \
		&& \
	yum clean all && \
	rm -rf /var/cache/yum
