FROM alpine:3.18
RUN apk add --no-cache build-base neovim git unzip

# create config/nvim
RUN mkdir -p /root/.config/nvim
WORKDIR /root/.config/nvim

# copy config/nvim
COPY . /root/.config/nvim

# Run nvim
# CMD DISABLE_COPILOT=1 nvim
ENTRYPOINT ["nvim"]
