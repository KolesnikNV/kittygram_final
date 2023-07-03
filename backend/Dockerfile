FROM python:3.9-slim

WORKDIR /app/backend 

COPY requirements.txt . 

RUN pip install -r requirements.txt --no-cache-dir 

COPY . . 

COPY ../scripts/entrypoint.sh /entrypoint.sh 

RUN chmod +x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"] 

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "kittygram_backend.wsgi"] 
