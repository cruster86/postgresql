FROM registry.sirius.online/infra/postgresql/spilo-15:3.0-p1-ru

RUN apt-get update &&\
    apt-get install -y --reinstall locales &&\
    apt --fix-broken install -y &&\
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen &&\
    echo 'ru_RU.UTF-8 UTF-8' >> /etc/locale.gen &&\
    locale-gen ru_RU.UTF-8 &&\
    locale-gen en_US.UTF-8 &&\
    rm -rf /var/lib/apt/lists/*

# set default lang
ENV LANG=ru_RU.UTF-8 \
    LANGUAGE=ru_RU:ru \
    LC_ALL=ru_RU.UTF-8