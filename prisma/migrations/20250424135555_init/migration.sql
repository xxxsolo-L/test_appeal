-- CreateEnum
CREATE TYPE "Status" AS ENUM ('NEW', 'IN_PROGRESS', 'COMPLETED', 'CANCELLED');

-- CreateTable
CREATE TABLE "Appeal" (
    "id" TEXT NOT NULL,
    "topic" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "status" "Status" NOT NULL DEFAULT 'NEW',
    "message_complete" TEXT,
    "message_cancel" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Appeal_pkey" PRIMARY KEY ("id")
);
