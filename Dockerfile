# Step 1: Base image
FROM node:20

# Step 2: Working directory
WORKDIR /usr/src/app

# Step 3: Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Step 4: Port + Command
EXPOSE 3000
CMD ["npm", "start"]