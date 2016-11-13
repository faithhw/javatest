FROM openjdk:8

RUN apt-get update && apt-get install -y --no-install-recommends \
		bzip2 \
		unzip \
		xz-utils \
    maven \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/.m2
ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

CMD ["java", "-version"]
