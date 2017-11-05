FROM marcelocg/phoenix

ENV APP_DIR /var/opt/app

# inotify-toolsのインストール
RUN set -x && \
  apt-get update && \
  apt-get install -y --no-install-recommends inotify-tools

# hexのインストール
RUN yes | mix local.hex

WORKDIR ${APP_DIR}

