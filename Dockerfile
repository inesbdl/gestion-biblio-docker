FROM electronuserland/builder:base-03.25

WORKDIR /app

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get update \
    && apt-get install -y \
        nodejs \
        libnss3 \
        libatk1.0-0 \
        libatk-bridge2.0-0 \
        libcups2 \
        libxcomposite1 \
        libxrandr2 \
        libxdamage1 \
        libxfixes3 \
        libxkbcommon0 \
        libx11-xcb1 \
        libgtk-3-0 \
        libgbm1 \
        libasound2 \
        libdrm2 \
        libxcb-dri3-0

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "start"]
