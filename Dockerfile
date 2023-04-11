FROM python

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3","-m","flask","run","--debug","--host=0.0.0.0"]
