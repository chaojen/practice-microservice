# Pull base image.
FROM python

# Set default WORKDIR in container
WORKDIR /app

# Update the repository
COPY python/. /app

# Install package requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn main:app --host 0.0.0.0 --port 80 --reload

EXPOSE 80