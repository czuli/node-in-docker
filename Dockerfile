FROM node:18
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Specify the command to run the application
CMD ["node", "index.js"]

# Expose the application port
EXPOSE 8081
