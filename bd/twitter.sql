-- usuarios
--id
--nick
--password


--timeline


--tuit
--id
--mensaje
--hora
--usuario_id

drop table usuarios cascade;

create table usuarios (
  id       bigserial   constraint pk_usuarios primary key,
  nick     varchar(15) not null constraint uq_usuarios_nick unique,
  password char(32)    not null
);

insert into usuarios (nick, password)
values (0, 'USUARIO FICTICIO', kk);
insert into usuarios (id, nick, password)
values ('Pepe', pepe);
insert into usuarios ((id, nick, password)
values ('Juan', juan);

drop table tuits cascade;

create table tuits (
	id          bigserial    constraint pk_tuits primary key,
	mensaje			varchar(140) not null,
	hora				date         not null default current_date,
	usuario_id  bigint       not null default 0
                           constraint fk_usuarios_id
                           references usuarios (id) on delete set default
                           on update cascade
);