FROM python:2-wheezy

RUN apt-get update && apt-get install -y \
    python-yaml \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /data
WORKDIR /data

COPY benblog/requirements.txt /data
RUN pip install -r /data/requirements.txt

COPY benblog /data/

ENTRYPOINT ["gunicorn", "benblog:app"]
CMD ["--bind=0.0.0.0:8080", "--workers=4"]
VOLUME ["/data/article", "/data/article_meta", "/data/static"]

EXPOSE 8080
