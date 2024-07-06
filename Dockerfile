# Dockerfile
# Stage 1: Build stage
FROM node:14 AS build

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Run the build script defined in package.json
#RUN npm run build

# Stage 2: Production stage
#FROM node:14-alpine

#WORKDIR /app

# Copy built files from the previous stage
#COPY --from=build /app /app

# Expose the port your app runs on
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]

