FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update && apt-get install --yes haskell-platform

RUN runhaskell --version | grep -q 8.0.2