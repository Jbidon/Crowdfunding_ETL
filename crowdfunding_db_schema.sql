-- Drop Tables
DROP TABLE IF EXISTS "campaign";
DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "contacts";

-- Create Tables
CREATE TABLE "campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar NOT NULL,
    "description" text NOT NULL,
    "goal" numeric NOT NULL,
    "pledged" numeric NOT NULL,
    "outcome" varchar NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar NOT NULL,
    "currency" varchar NOT NULL,
    "launch_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" varchar NOT NULL,
    "subcategory_id" varchar NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

CREATE TABLE "category" (
    "category_id" varchar NOT NULL,
    "category_name" varchar NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar NOT NULL,
    "subcategory_name" varchar NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "contacts" (
    "contact_id" int NOT NULL,
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "email" varchar NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

-- Check Data Import
SELECT * FROM campaign
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory