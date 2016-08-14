FROM hypriot/rpi-python:latest

RUN apt-get update && apt-get install -y \
    python-yaml \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

COPY benblog/requirements.txt /data
RUN pip install -r /data/requirements.txt

COPY benblog /data/

ENTRYPOINT ["gunicorn", "benblog:app"]
CMD ["--bind=0.0.0.0:8080", "--workers=4"]

EXPOSE 8080
