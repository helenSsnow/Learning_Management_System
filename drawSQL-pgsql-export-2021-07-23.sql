CREATE TABLE "courses"(
    "id" INTEGER NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "date" DATE NOT NULL,
    "create_author" VARCHAR(255) NOT NULL,
    "time_course" INTEGER NOT NULL,
    "delete_author" VARCHAR(255) NOT NULL,
    "rating" DOUBLE PRECISION NOT NULL,
    "lessons" INTEGER NOT NULL,
    "teg" VARCHAR(255) NOT NULL,
    "category" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "courses" ADD PRIMARY KEY("id");
CREATE TABLE "lessons"(
    "id" INTEGER NOT NULL,
    "title" INTEGER NOT NULL,
    "create_data" DATE NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "create_author" VARCHAR(255) NOT NULL,
    "change_time" DATE NOT NULL,
    "change_author" VARCHAR(255) NOT NULL,
    "delete_time" DATE NOT NULL,
    "delete_authoe" VARCHAR(255) NOT NULL,
    "course_id" INTEGER NOT NULL
);
ALTER TABLE
    "lessons" ADD PRIMARY KEY("id");
CREATE TABLE "Users"(
    "id" INTEGER NOT NULL,
    "nickname" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "mail" VARCHAR(255) NOT NULL,
    "avatar" VARCHAR(255) NOT NULL,
    "data_registration" DATE NOT NULL,
    "change_data" DATE NOT NULL,
    "change_author" VARCHAR(255) NOT NULL,
    "delete_author" VARCHAR(255) NOT NULL,
    "delete_data" DATE NOT NULL,
    "user_cotegory" VARCHAR(255) NOT NULL,
    "id_courses" INTEGER NOT NULL
);
ALTER TABLE
    "Users" ADD PRIMARY KEY("id");
CREATE TABLE "ratings"(
    "id" INTEGER NOT NULL,
    "grade" DOUBLE PRECISION NOT NULL,
    "course_id" INTEGER NOT NULL
);
ALTER TABLE
    "ratings" ADD PRIMARY KEY("id");
ALTER TABLE
    "lessons" ADD CONSTRAINT "lessons_course_id_foreign" FOREIGN KEY("course_id") REFERENCES "courses"("id");
ALTER TABLE
    "courses" ADD CONSTRAINT "courses_create_author_foreign" FOREIGN KEY("create_author") REFERENCES "Users"("id");
ALTER TABLE
    "courses" ADD CONSTRAINT "courses_delete_author_foreign" FOREIGN KEY("delete_author") REFERENCES "Users"("id");
ALTER TABLE
    "lessons" ADD CONSTRAINT "lessons_create_author_foreign" FOREIGN KEY("create_author") REFERENCES "Users"("id");
ALTER TABLE
    "lessons" ADD CONSTRAINT "lessons_change_author_foreign" FOREIGN KEY("change_author") REFERENCES "Users"("id");
ALTER TABLE
    "lessons" ADD CONSTRAINT "lessons_delete_authoe_foreign" FOREIGN KEY("delete_authoe") REFERENCES "Users"("id");
ALTER TABLE
    "ratings" ADD CONSTRAINT "ratings_course_id_foreign" FOREIGN KEY("course_id") REFERENCES "courses"("id");
ALTER TABLE
    "Users" ADD CONSTRAINT "users_change_author_foreign" FOREIGN KEY("change_author") REFERENCES "Users"("id");
ALTER TABLE
    "Users" ADD CONSTRAINT "users_delete_author_foreign" FOREIGN KEY("delete_author") REFERENCES "Users"("id");
ALTER TABLE
    "Users" ADD CONSTRAINT "users_id_courses_foreign" FOREIGN KEY("id_courses") REFERENCES "courses"("id");