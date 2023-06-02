FROM alpine:3.18
RUN apk add --no-cache --update build-base neovim git unzip curl nodejs git \
  ruby ruby-dev npm && rm -rf /var/cache/apk/*

# create config/nvim
RUN mkdir -p /root/.config/nvim
WORKDIR /root/.config/nvim

# copy config/nvim
COPY . /root/.config/nvim

# Run nvim
# ENTRYPOINT ["DISABLE_COPILOT=1 nvim"]
CMD DISABLE_COPILOT=1 nvim /mnt/workspace
