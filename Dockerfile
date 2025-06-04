FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=_init_.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
