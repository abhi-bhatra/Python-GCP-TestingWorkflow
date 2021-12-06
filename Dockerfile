FROM python:3.6
COPY . /app
EXPOSE 5000
ENV PORT 5000
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD exec gunicorn --bind :$PORT app:app --workers 1 --threads 1 --timeout 60
