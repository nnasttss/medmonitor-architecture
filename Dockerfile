FROM node:18-alpine

WORKDIR /app

# Копіювати package files
COPY package*.json ./

# Встановити залежності
RUN npm ci --only=production

# Копіювати джерельний код
COPY . .

# Створити non-root користувача
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001

USER nodejs

# Відкрити порт
EXPOSE 3000

# Команда запуску
CMD ["npm", "start"]
