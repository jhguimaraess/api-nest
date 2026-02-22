-- CreateTable
CREATE TABLE "login_audit" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ipAddress" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "login_audit_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "login_audit" ADD CONSTRAINT "login_audit_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
