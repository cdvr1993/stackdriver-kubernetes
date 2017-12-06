FROM gcr.io/google-containers/fluentd-gcp:2.0.10

LABEL maintainer="cdvr1993@gmail.com"

RUN apt update -y \
    && apt install -y ruby-dev build-essential \
    && gem install activesupport -v 4.2.6 \
    && gem install fluent-plugin-kubernetes_metadata_filter \
    && apt purge -y ruby-dev build-essential \
    && rm -rf /var/cache/*
