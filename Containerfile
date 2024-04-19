FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN monprojet create-db
RUN monprojet populate-db
RUN monprojet add-user -u admin -p admin
EXPOSE 5000
CMD ["monprojet", "run"]
