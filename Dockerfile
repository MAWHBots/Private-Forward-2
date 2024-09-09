
FROM python:3.9-slim

COPY . /Ultra-Forward-Bot
WORKDIR /Ultra-Forward-Bot

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

# Replace this line with the actual command or script you want to run
RUN python3 main.py

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["sh", "/start.sh"]
