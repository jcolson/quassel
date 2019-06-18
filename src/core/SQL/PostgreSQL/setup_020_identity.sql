CREATE TABLE identity (
       identityid serial PRIMARY KEY,
       userid integer NOT NULL REFERENCES quasseluser (userid) ON DELETE CASCADE,
       identityname varchar(8703) NOT NULL,
       realname varchar(8703) NOT NULL,
       awaynick varchar(8703),
       awaynickenabled boolean NOT NULL DEFAULT FALSE,
       awayreason varchar(8703),
       awayreasonenabled boolean NOT NULL DEFAULT FALSE,
       autoawayenabled boolean NOT NULL DEFAULT FALSE,
       autoawaytime integer NOT NULL,
       autoawayreason varchar(8703),
       autoawayreasonenabled boolean NOT NULL DEFAULT FALSE,
       detachawayenabled boolean NOT NULL DEFAULT FALSE,
       detachawayreason varchar(8703),
       detachawayreasonenabled boolean NOT NULL DEFAULT FALSE,
       ident varchar(8703),
       kickreason varchar(8703),
       partreason varchar(8703),
       quitreason varchar(8703),
       sslcert bytea,
       sslkey bytea,
       UNIQUE (userid, identityname)
)
