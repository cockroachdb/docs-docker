FROM jekyll/builder

RUN apk -v --update add \
		groff \
		less \
		py-pip \
		python \
	&& \
	pip install --upgrade awscli s3cmd && \
	apk -v --purge del py-pip && \
	rm /var/cache/apk/*
