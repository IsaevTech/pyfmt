FROM python:3-slim
COPY requirements.txt /
RUN pip --no-cache-dir install -r requirements.txt
COPY lint /usr/local/bin/lint
COPY format /usr/local/bin/format
COPY minify /usr/local/bin/minify
WORKDIR /code
CMD ["lint"]