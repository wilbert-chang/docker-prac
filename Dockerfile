# Layer 1: Use Node.js image
FROM node:18

# Layer 2: Set working directory
WORKDIR /app

# Layer 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Layer 4: Copy all files to container
COPY . .

# Layer 5: Expose port 5000
EXPOSE 5000

# Layer 6: Command to run the app
CMD ["node", "app-2.js"]