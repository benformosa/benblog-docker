FROM hypriot/rpi-python:latest

RUN apt-get update && apt-get install -y \
    python-yaml \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

COPY benblog/requirements.txt /data
RUN pip install -r /data/requirements.txt

COPY benblog /data/

CMD ["gunicorn", "benblog:app"]
