/*
  Warnings:

  - You are about to drop the column `created` on the `Products` table. All the data in the column will be lost.
  - You are about to drop the column `created` on the `Users` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Products` DROP COLUMN `created`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AlterTable
ALTER TABLE `Users` DROP COLUMN `created`;
