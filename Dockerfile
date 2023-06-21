FROM mhart/alpine-node

WORKDIR /src

COPY package*.json /src/

RUN npm install http-server -g

# Install Node packages 
RUN npm install --loglevel=error

# Copy the rest
COPY . .

# Test Frontend
#RUN npm run test:coverage

# Build Frontend
RUN npm run build
