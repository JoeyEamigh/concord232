FROM python:3-alpine

WORKDIR /app

COPY setup.py /app
COPY concord232 /app/concord232
COPY concord232_client /app
COPY concord232_server /app

RUN python setup.py install

CMD python -m concord232_server --serial $DEVICE