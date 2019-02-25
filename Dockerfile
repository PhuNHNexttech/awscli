FROM alpine:3.9

RUN apk add --no-cache python3.7.2 && \
    python3.7.2 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3.7.2 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN pip install awscli

CMD set PYTHONIOENCODING=utf-8
