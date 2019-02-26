FROM python:3.7.2-slim

RUN pip install awscli

CMD set PYTHONIOENCODING=utf-8
