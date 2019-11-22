FROM sentry:9.1.2-onbuild

RUN apt-get update && apt-get install -y --no-install-recommends \
  libxmlsec1-dev \
  pkg-config \
  && rm -rf /var/lib/apt/lists/*

RUN pip install https://github.com/getsentry/sentry-auth-saml2/archive/master.zip
