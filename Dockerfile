FROM alpine:3.8
MAINTAINER Jonathan Gonzalez <j@0x30.io> @EA1HET

RUN apk add --no-cache python3                                  \
    && python3 -m ensurepip                                     \
    && pip3 install -U pip                                      \
    && rm -rf /usr/lib/python*/ensurepip                        \
    && rm -rf /root/.cache                                      \
    && rm -rf /var/cache/apk/*                                  \
    && find /                                                   \
        \( -type d -a -name test -o -name tests \)              \
        -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \)      \
        -exec rm -rf '{}' +                                     \
    && mkdir /app

EXPOSE 5000

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT /app/boot.sh
