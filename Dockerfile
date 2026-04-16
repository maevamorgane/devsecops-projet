FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

# Intentionnellement root pour que Conftest le détecte (on le corrigera)
CMD ["python", "app.py"]
