# 📬 Appeals System API

[![Node.js](https://img.shields.io/badge/Node.js-%3E%3D14-brightgreen)](https://nodejs.org/) [![License: MIT](https://img.shields.io/badge/License-MIT-blue)](LICENSE)

Небольшой и быстрый API для работы с анонимными обращениями.

---

## 🚀 Технологии

- **Node.js** ≥14
- **Express.js**
- **TypeScript**
- **Prisma ORM**

---

## ⚡ Установка

1. Клонировать репозиторий:
   ```bash
   git clone <репозиторий>
   cd <папка>
   ```
2. Установить зависимости:
   ```bash
   npm install
   ```
3. Создать файл `.env` в корне проекта и добавить:
   ```env
   DATABASE_URL="<URL вашей БД>"
   PORT=3000
   ```
4. Запустить миграции Prisma:
   ```bash
   npx prisma migrate dev --name init
   ```

---

## ⚙️ Скрипты

| Команда            | Описание                                |
|--------------------|-----------------------------------------|
| `npm run dev`      | Запуск в режиме разработки (hot reload)  |
| `npm run build`    | Сборка TypeScript → JavaScript в `dist` |
| `npm start`        | Запуск production сервера из `dist`     |

---

## 🔗 Эндпоинты API

| Метод  | Маршрут                              | Описание                                   |
|-------:|--------------------------------------|--------------------------------------------|
| `POST` | `/appeals`                           | Создать новое обращение                    |
| `PATCH`| `/appeals/:id/start`                 | Взять обращение в работу                   |
| `PATCH`| `/appeals/:id/complete`              | Завершить обращение (добавить решение)     |
| `PATCH`| `/appeals/:id/cancel`                | Отменить обращение (указать причину)       |
| `GET`  | `/appeals`                           | Список обращений + фильтр по дате/диапазону|
| `PATCH`| `/appeals/cancel-in-progress`        | Отменить все обращения в статусе «В работе»|

> **Фильтрация:**
> - По дате: `/appeals?date=YYYY-MM-DD`
> - По диапазону: `/appeals?start=YYYY-MM-DD&end=YYYY-MM-DD`

---

## 🗂 Структура проекта

```
prisma/         # Схема БД и миграции
src/
  controllers/  # Логика контроллеров
  middleware/   # Обработчики ошибок и пр.
  routes/       # Определение роутов
  app.ts        # Конфигурация Express
  server.ts     # Запуск сервера
```

---

## 🌟 Лицензия

MIT © Ваше Имя или Компания
