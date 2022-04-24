use ldap;
set names utf8mb4;

-- alter table accounts_user change column password password varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL;

alter table accounts_ldapserver change column password `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL;