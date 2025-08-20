# Use a lightweight Node.js image
FROM node:20-slim
# Set working directory
WORKDIR /app
# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production
# Copy the rest of the app
COPY . .
# Run the bot
CMD ["node", "bot.js"]