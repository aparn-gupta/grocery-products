# My Grocery Products Page

A small full-stack application built to explore a typical modern backend workflow using **Next.js**, **Prisma**, and **Redis caching**.

The project demonstrates how a relational database (MySQL) can be accessed through Prisma ORM while using Redis to cache frequently requested data and reduce database load.


## Tech Stack

- **Next.js** – full-stack React framework
- **Prisma ORM** – database access and schema management
- **MySQL** – primary relational database
- **Redis** – caching layer
- **JWT** – authentication
- **bcrypt** – password hashing
- **Shadcn UI** – frontend components

---

## Features

- User authentication using **JWT**
- Password hashing with **bcrypt**
- Database access using **Prisma ORM**
- **Redis-based caching** for selected API responses
- Basic CRUD operations
- Simple UI built with **Shadcn UI**

---

## Architecture

Client (Browser) -> Next.js Application -> API Routes -> Redis Cache -> Prisma ORM -> MySQL Database

The application first checks Redis for cached data before querying the database through Prisma.


## Run Locally

### 1. Clone the repository
### 2. Install dependencies
### 3. Set up environment variables using example file
### 4. Run database migrations and use dummy data from sample database




---

## Notes

This repository is a small practice project focused on experimenting with **Prisma ORM workflows** and **Redis-based caching patterns** in a Next.js application.

The implementation intentionally keeps the application logic simple while demonstrating how these tools integrate in a typical full-stack setup.

