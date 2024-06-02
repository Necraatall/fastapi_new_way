# Použití oficiálního Python obrazu
FROM python:3.10

# Nastavení pracovního adresáře
WORKDIR /app

# Instalace pipenv
RUN pip install pipenv

# Kopírování Pipfile a Pipfile.lock do kontejneru
COPY Pipfile Pipfile.lock ./

# Instalace závislostí pomocí pipenv
RUN pipenv install --dev --system --deploy

# Kopírování zbytku projektu do kontejneru
COPY . .

# Nastavení proměnných prostředí
ENV DB_HOST=${DB_HOST}
ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_NAME=${DB_NAME}