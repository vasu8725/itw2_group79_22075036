CREATE DATABASE Restaurant;
use restaurant;
CREATE TABLE django_migrations(id integer AUTO_INCREMENT NOT NULL PRIMARY KEY , app varchar(255) NOT NULL, name varchar(255) NOT NULL, applied datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2023-08-10 18:16:07.319375');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2023-08-10 18:16:07.340578');
INSERT INTO django_migrations VALUES(3,'accounts','0001_initial','2023-08-10 18:16:07.351611');
INSERT INTO django_migrations VALUES(4,'admin','0001_initial','2023-08-10 18:16:07.365375');
INSERT INTO django_migrations VALUES(5,'admin','0002_logentry_remove_auto_add','2023-08-10 18:16:07.379387');
INSERT INTO django_migrations VALUES(6,'admin','0003_logentry_add_action_flag_choices','2023-08-10 18:16:07.389389');
INSERT INTO django_migrations VALUES(7,'contenttypes','0002_remove_content_type_name','2023-08-10 18:16:07.408024');
INSERT INTO django_migrations VALUES(8,'auth','0002_alter_permission_name_max_length','2023-08-10 18:16:07.421711');
INSERT INTO django_migrations VALUES(9,'auth','0003_alter_user_email_max_length','2023-08-10 18:16:07.432716');
INSERT INTO django_migrations VALUES(10,'auth','0004_alter_user_username_opts','2023-08-10 18:16:07.441926');
INSERT INTO django_migrations VALUES(11,'auth','0005_alter_user_last_login_null','2023-08-10 18:16:07.455679');
INSERT INTO django_migrations VALUES(12,'auth','0006_require_contenttypes_0002','2023-08-10 18:16:07.458656');
INSERT INTO django_migrations VALUES(13,'auth','0007_alter_validators_add_error_messages','2023-08-10 18:16:07.470076');
INSERT INTO django_migrations VALUES(14,'auth','0008_alter_user_username_max_length','2023-08-10 18:16:07.480842');
INSERT INTO django_migrations VALUES(15,'auth','0009_alter_user_last_name_max_length','2023-08-10 18:16:07.493880');
INSERT INTO django_migrations VALUES(16,'auth','0010_alter_group_name_max_length','2023-08-10 18:16:07.505859');
INSERT INTO django_migrations VALUES(17,'auth','0011_update_proxy_permissions','2023-08-10 18:16:07.512874');
INSERT INTO django_migrations VALUES(18,'auth','0012_alter_user_first_name_max_length','2023-08-10 18:16:07.524859');
INSERT INTO django_migrations VALUES(19,'fooditems','0001_initial','2023-08-10 18:16:07.531122');
INSERT INTO django_migrations VALUES(20,'fooditems','0002_cart','2023-08-10 18:16:07.546020');
INSERT INTO django_migrations VALUES(21,'fooditems','0003_alter_item_limit','2023-08-10 18:16:07.555026');
INSERT INTO django_migrations VALUES(22,'sessions','0001_initial','2023-08-10 18:16:07.563555');
INSERT INTO django_migrations VALUES(23,'webpages','0001_initial','2023-08-10 18:16:07.571554');
INSERT INTO django_migrations VALUES(24,'webpages','0002_contact','2023-08-10 18:16:07.576552');
CREATE TABLE auth_group_permissions(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, group_id integer NOT NULL REFERENCES auth_group (id), permission_id integer NOT NULL REFERENCES auth_permission (id));
CREATE TABLE auth_user_groups(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, user_id integer NOT NULL REFERENCES auth_user (id), group_id integer NOT NULL REFERENCES auth_group(id));
CREATE TABLE auth_user_user_permissions(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, user_id integer NOT NULL REFERENCES auth_user(id), permission_id integer NOT NULL REFERENCES auth_permission (id));
CREATE TABLE accounts_customer(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, mobile_number varchar(12) NOT NULL, city varchar(200) NOT NULL, pincode integer NOT NULL, address varchar(300) NOT NULL, user_id integer NOT NULL UNIQUE REFERENCES auth_user (id));
CREATE TABLE django_admin_log(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, object_id text NULL, object_repr varchar(200) NOT NULL, action_flag smallint unsigned NOT NULL CHECK (action_flag >= 0), change_message text NOT NULL, content_type_id integer NULL REFERENCES django_content_type(id), user_id integer NOT NULL REFERENCES auth_user(id), action_time datetime NOT NULL);
CREATE TABLE django_content_type(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, app_label varchar(100) NOT NULL, model varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'accounts','customer');
INSERT INTO django_content_type VALUES(2,'fooditems','item');
INSERT INTO django_content_type VALUES(3,'fooditems','cart');
INSERT INTO django_content_type VALUES(4,'webpages','slider');
INSERT INTO django_content_type VALUES(5,'webpages','team');
INSERT INTO django_content_type VALUES(6,'webpages','contact');
INSERT INTO django_content_type VALUES(7,'admin','logentry');
INSERT INTO django_content_type VALUES(8,'auth','permission');
INSERT INTO django_content_type VALUES(9,'auth','group');
INSERT INTO django_content_type VALUES(10,'auth','user');
INSERT INTO django_content_type VALUES(11,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(12,'sessions','session');
CREATE TABLE auth_permission(id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, content_type_id integer NOT NULL REFERENCES django_content_type(id), codename varchar(100) NOT NULL, name varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_customer','Can add customer');
INSERT INTO auth_permission VALUES(2,1,'change_customer','Can change customer');
INSERT INTO auth_permission VALUES(3,1,'delete_customer','Can delete customer');
INSERT INTO auth_permission VALUES(4,1,'view_customer','Can view customer');
INSERT INTO auth_permission VALUES(5,2,'add_item','Can add item');
INSERT INTO auth_permission VALUES(6,2,'change_item','Can change item');
INSERT INTO auth_permission VALUES(7,2,'delete_item','Can delete item');
INSERT INTO auth_permission VALUES(8,2,'view_item','Can view item');
INSERT INTO auth_permission VALUES(9,3,'add_cart','Can add cart');
INSERT INTO auth_permission VALUES(10,3,'change_cart','Can change cart');
INSERT INTO auth_permission VALUES(11,3,'delete_cart','Can delete cart');
INSERT INTO auth_permission VALUES(12,3,'view_cart','Can view cart');
INSERT INTO auth_permission VALUES(13,4,'add_slider','Can add slider');
INSERT INTO auth_permission VALUES(14,4,'change_slider','Can change slider');
INSERT INTO auth_permission VALUES(15,4,'delete_slider','Can delete slider');
INSERT INTO auth_permission VALUES(16,4,'view_slider','Can view slider');
INSERT INTO auth_permission VALUES(17,5,'add_team','Can add team');
INSERT INTO auth_permission VALUES(18,5,'change_team','Can change team');
INSERT INTO auth_permission VALUES(19,5,'delete_team','Can delete team');
INSERT INTO auth_permission VALUES(20,5,'view_team','Can view team');
INSERT INTO auth_permission VALUES(21,6,'add_contact','Can add contact');
INSERT INTO auth_permission VALUES(22,6,'change_contact','Can change contact');
INSERT INTO auth_permission VALUES(23,6,'delete_contact','Can delete contact');
INSERT INTO auth_permission VALUES(24,6,'view_contact','Can view contact');
INSERT INTO auth_permission VALUES(25,7,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(26,7,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(27,7,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(28,7,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(29,8,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(30,8,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(31,8,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(32,8,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(33,9,'add_group','Can add group');
INSERT INTO auth_permission VALUES(34,9,'change_group','Can change group');
INSERT INTO auth_permission VALUES(35,9,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(36,9,'view_group','Can view group');
INSERT INTO auth_permission VALUES(37,10,'add_user','Can add user');
INSERT INTO auth_permission VALUES(38,10,'change_user','Can change user');
INSERT INTO auth_permission VALUES(39,10,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(40,10,'view_user','Can view user');
INSERT INTO auth_permission VALUES(41,11,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(42,11,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(43,11,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(44,11,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(45,12,'add_session','Can add session');
INSERT INTO auth_permission VALUES(46,12,'change_session','Can change session');
INSERT INTO auth_permission VALUES(47,12,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(48,12,'view_session','Can view session');
CREATE TABLE auth_group (id integer NOT NULL PRIMARY KEY AUTO_INCREMENT, name varchar(150) NOT NULL UNIQUE);
CREATE TABLE auth_user (id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,password varchar(128) NOT NULL, last_login datetime NULL, is_superuser bool NOT NULL, username varchar(150) NOT NULL UNIQUE, last_name varchar(150) NOT NULL,email varchar(254) NOT NULL, is_staff bool NOT NULL, is_active bool NOT NULL, date_joined datetime NOT NULL, "first_name" varchar(150) NOT NULL);
CREATE TABLE IF NOT EXISTS "fooditems_cart" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "quantity" integer NOT NULL, "created_date" datetime NOT NULL, "food_id" bigint NOT NULL REFERENCES "fooditems_item" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "fooditems_item" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL, "price" integer NOT NULL, "photo" varchar(100) NOT NULL, "category" varchar(200) NOT NULL, "description" text NOT NULL, "is_veg" bool NOT NULL, "is_featured" bool NOT NULL, "is_available" bool NOT NULL, "last_modified" datetime NOT NULL, "created_date" datetime NOT NULL, "limit" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "webpages_slider" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "headline" varchar(200) NOT NULL, "subtitle" varchar(200) NOT NULL, "button_text" varchar(200) NOT NULL, "photo" varchar(100) NOT NULL, "created_date" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "webpages_team" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(200) NOT NULL, "role" varchar(200) NOT NULL, "photo" varchar(100) NOT NULL, "fb_link" varchar(200) NOT NULL, "insta_link" varchar(200) NOT NULL, "created_date" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "webpages_contact" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "firstname" varchar(200) NOT NULL, "lastname" varchar(200) NOT NULL, "phone_number" integer NOT NULL, "email" varchar(200) NOT NULL, "subject" varchar(200) NOT NULL, "details_message" text NOT NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',24);
INSERT INTO sqlite_sequence VALUES('django_admin_log',0);
INSERT INTO sqlite_sequence VALUES('django_content_type',12);
INSERT INTO sqlite_sequence VALUES('auth_permission',48);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',0);
INSERT INTO sqlite_sequence VALUES('fooditems_item',0);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "fooditems_cart_food_id_07ba0262" ON "fooditems_cart" ("food_id");
CREATE INDEX "fooditems_cart_user_id_e9c92a5b" ON "fooditems_cart" ("user_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;
