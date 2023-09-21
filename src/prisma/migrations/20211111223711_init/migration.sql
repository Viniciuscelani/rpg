-- CreateTable
CREATE TABLE "character" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(191) NOT NULL,
    "age" INTEGER,
    "gender" VARCHAR(191),
    "player_name" VARCHAR(191),
    "current_hit_points" INTEGER NOT NULL DEFAULT 0,
    "max_hit_points" INTEGER NOT NULL DEFAULT 0,
    "current_picture" INTEGER NOT NULL DEFAULT 1,
    "is_dead" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3)
);

-- CreateTable
CREATE TABLE "attribute" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(191) NOT NULL,
    "description" VARCHAR(191)
);

-- CreateTable
CREATE TABLE "character_attributes" (
    "character_id" INTEGER NOT NULL,
    "attribute_id" INTEGER NOT NULL,
    "value" VARCHAR(191),
    PRIMARY KEY ("character_id", "attribute_id"),
    FOREIGN KEY ("character_id") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY ("attribute_id") REFERENCES "attribute"("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "skills" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(191) NOT NULL,
    "description" VARCHAR(191)
);

-- CreateTable
CREATE TABLE "character_skills" (
    "character_id" INTEGER NOT NULL,
    "skill_id" INTEGER NOT NULL,
    "value" VARCHAR(191),
    PRIMARY KEY ("character_id", "skill_id"),
    FOREIGN KEY ("character_id") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY ("skill_id") REFERENCES "skills"("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "roll" (
    "id" SERIAL PRIMARY KEY,
    "max_number" INTEGER NOT NULL,
    "rolled_number" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "rolled_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    FOREIGN KEY ("character_id") REFERENCES "character"("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
