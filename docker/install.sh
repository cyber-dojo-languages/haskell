#!/bin/sh -eu

# Records the Haskell this image holds, in the shape every image shares. Its
# version is ghc's: that is the compiler which implements it here. The
# installed compiler is asked, so the version is one the image can run rather
# than one written down when someone last edited this file.
readonly LANGUAGE_VERSION=$(ghc --numeric-version)

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from ghc --numeric-version' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "Haskell",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
