FROM python:3.7.3-stretch
 
WORKDIR /app

COPY . /app/

#hadolint ignore=DL3013
RUN pip install --no-cache-dir --requirement requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]


