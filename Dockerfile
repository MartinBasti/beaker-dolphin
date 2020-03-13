FROM node:latest
LABEL \
        name="Beaker bot" \
        maintainer="Martin Styk <martin.styk@redhat.com>" \
        license="GPLv3"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["npm", "start"]