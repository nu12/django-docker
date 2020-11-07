FROM python:3.7

WORKDIR /app

RUN pip install django

COPY . /app/

EXPOSE 8000

ENTRYPOINT ["sh", "/app/entrypoint.sh"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]