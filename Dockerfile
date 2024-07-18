FROM node:18

# Ustawienie zmiennej środowiskowej PORT
ENV PORT=20100

WORKDIR /app

# Kopiowanie plików package.json i package-lock.json (jeśli dostępne)
COPY package*.json ./

# Instalacja zależności
RUN npm install

# Kopiowanie reszty kodu aplikacji
COPY . .

# Wystawienie portu aplikacji
EXPOSE 20100

# Określenie komendy do uruchomienia aplikacji
CMD ["node", "index.js"]
