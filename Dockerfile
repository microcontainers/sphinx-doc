FROM minidocks/python
LABEL maintainer="Martin Hasoň <martin.hason@gmail.com>"

ARG version=2.4.1

RUN pip install \
      sphinx=="$version" \
      m2r \
      recommonmark \
      sphinx_rtd_theme \
      sphinx-autobuild \
      sphinx-multibuild \
      sphinx-tabs \
    && clean

COPY rootfs /

CMD [ "sphinx-build" ]
