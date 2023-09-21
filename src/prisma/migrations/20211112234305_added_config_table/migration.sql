-- CreateTable
CREATE TABLE "config" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(191) NOT NULL,
    "value" VARCHAR(191)
)  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
