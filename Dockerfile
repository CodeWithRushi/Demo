FROM python:latest
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8888
ENV MYSQL_ROOT_PASSWORD="PASSWORD"
CMD ["python","app.py","runserver","0.0.0.0:8888"]
