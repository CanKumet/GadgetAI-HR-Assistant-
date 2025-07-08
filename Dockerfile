ARG BASE_TAG=patchedv38
FROM cankumet/flask-agent:${BASE_TAG}

USER root

# Tüm proje kodlarını yeniden kopyala
COPY . /app

WORKDIR /app

# Eğer gerekirse requirements kurulabilir
# RUN pip install -r requirements.txt

CMD ["python", "main.py"]