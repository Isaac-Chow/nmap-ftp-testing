FROM python:3.10-buster
RUN apt-get update && apt-get install -y iptables
WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

# Blocking ftp port with iptables
# RUN iptables -A INPUT -p tcp --dport 21 -j REJECT
# EXPOSE 5500
# CMD ["flask", "run", "--host=0.0.0.0"]
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
