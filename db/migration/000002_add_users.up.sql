CREATE TABLE "users" (
  "username" varchar PRIMARY KEY,
  "hashed_password" varchar NOT NULL,
  "full_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password_changed_at" timestamptz NOT NULL DEFAULT ('0001-01-1 00:00:00Z'),
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

ALTER TABLE IF EXISTS accounts DROP CONSTRAINT IF EXISTS accounts_owner_key
;

ALTER TABLE "accounts" ADD FOREIGN KEY ("owner") REFERENCES "users" ("username");

-- CREATE UNIQUE INDEX ON "accounts" ("owner", "currency");
ALTER TABLE "accounts" ADD CONSTRAINT "owner_currency_key" UNIQUE("owner", "currency");

