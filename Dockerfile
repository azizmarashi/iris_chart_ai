FROM ubuntu:latest
FROM python:3.11

# تنظیم دایرکتوری کار
WORKDIR /iris_chart_ai

# کپی کردن فایل‌های requirements.txt به دایرکتوری کار
COPY requirements.txt .

# نصب پکیج‌ها با استفاده از pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# کپی کردن کد منبع به دایرکتوری کار
COPY . .

# دستور اجرای برنامه (در صورت وجود)
CMD ["python", "just_print.py"]