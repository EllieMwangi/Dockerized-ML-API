FROM python:3.7.3-stretch
 
COPY requirements.txt /app/
RUN pip install --no-cache-dir --requirement /app/requirements.txt

WORKDIR /app
COPY . /app/
# hadolint ignore=DL3013

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]


