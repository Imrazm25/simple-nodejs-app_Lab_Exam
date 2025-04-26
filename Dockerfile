# Use official Node.js LTS version image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the app port (assuming 3000)
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
