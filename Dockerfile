FROM python:3.10-alpine
WORKDIR /python_get_ip_dockerize
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "main.py"]