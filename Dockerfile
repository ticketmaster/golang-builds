FROM golang:1.9.1

LABEL maintainer="DevXTools <devxtools@ticketmaster.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
            git \
            curl \
            unzip \
    && rm -rf /var/lib/apt/lists/*

# ENV for Dep
ENV GODEP_VERSION v0.3.2
ENV GODEP_URL https://github.com/golang/dep/releases/download/$GODEP_VERSION/dep-linux-amd64.zip
ENV GODEP_DOWNLOAD_SHA256 322152b8b50b26e5e3a7f6ebaeb75d9c11a747e64bbfd0d8bb1f4d89a031c2b5
# ENV for Glide
ENV GLIDE_VERSION v0.13.0
ENV GLIDE_DOWNLOAD_URL https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz
ENV GLIDE_DOWNLOAD_SHA256 77680bbd9e51de9a5cbd212f4d0aab51abac49971695f0bc779b117f8cb188ff
ENV PATH $PATH:/usr/local/glide/linux-amd64

RUN curl -fsSL "$GLIDE_DOWNLOAD_URL" -o glide.tar.gz \
    && echo "$GLIDE_DOWNLOAD_SHA256  glide.tar.gz" | sha256sum -c - \
    && mkdir -p /usr/local/glide \
    && tar -C /usr/local/glide -xzf glide.tar.gz \
    && rm glide.tar.gz \
    && curl -fsSL "$GODEP_URL" -o dep.zip \
    && echo "$GODEP_DOWNLOAD_SHA256 dep.zip" | sha256sum -c - \
    && unzip -d /usr/local/bin dep.zip \
    && rm dep.zip \
    && go get -u github.com/Masterminds/glide-report \
    && go get -u github.com/sgotti/glide-vc \
    && go get -u github.com/ngdinhtoan/glide-cleanup \
    && go get github.com/mitchellh/gox \
    && go get github.com/smartystreets/goconvey \
    && go get github.com/golang/lint/golint \
    && go get honnef.co/go/tools/cmd/gosimple \
    && go get github.com/mdempsky/unconvert \
    && go get github.com/opennota/check/cmd/structcheck \
    && go get github.com/opennota/check/cmd/varcheck \
    && go get github.com/HewlettPackard/gas
