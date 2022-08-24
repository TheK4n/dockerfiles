
FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# no permissions user
RUN rm requirements.txt && \
    addgroup --gid 1001 --system app && \
    adduser --no-create-home --shell /bin/false --disabled-password --uid 1001 --system --group app && \
    find /app -type d -exec chmod 755 {} \; && \
    find /app -type f -exec chmod 644 {} \; && \
    chmod -R o-rx /usr/local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin && \
    chmod o+rx /usr/local/bin && \
    chmod o+rx /usr/local/bin/python3.10 /usr/local/bin/python3 /usr/local/bin/python


USER app:app
