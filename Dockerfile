FROM python:3.9-slim
WORKDIR /app
COPY requirement.txt /app/
RUN pip install --no-cache-dir -r requirement.txt
COPY . /app/
EXPOSE 5000
CMD ["python3", "app.py", "--host=0.0.0.0", "--port=5000"]
