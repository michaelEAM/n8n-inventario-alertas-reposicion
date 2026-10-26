-- =====================================================================
-- Proyecto Inventario - Script completo para un proyecto Supabase NUEVO
-- Ejecutar en: Supabase > SQL Editor > New query > Run
-- =====================================================================

-- 1) TABLA DE PRODUCTOS (la que lee el workflow) ----------------------
create table if not exists public.stock_productos (
  id            bigint generated always as identity primary key,
  producto      text not null,
  stock         int,                       -- admite NULL a propósito (prueba de entrada no válida)
  stock_minimo  int not null default 0,
  created_at    timestamptz not null default now()
);

-- 2) TABLA DE ALERTAS DE REPOSICIÓN (la que escribe el workflow) ------
create table if not exists public.alertas_reposicion (
  id               bigint generated always as identity primary key,
  alerta_id        text not null unique,   -- anti-duplicados: <id producto>-<AAAA-MM-DD>
  producto         text,
  stock            int,
  stock_minimo     int,
  faltante         int,
  prioridad        text,
  estado_stock     text,
  accion           text,
  mensaje          text,
  estado_atencion  text not null default 'pendiente',  -- pendiente / en revisión / resuelto
  creado_en        timestamptz not null default now()
);

-- 3) TABLA DE INCIDENTES (la que escribe el manejador de errores) -----
create table if not exists public.incidentes (
  id                bigint generated always as identity primary key,
  ejecucion_id      text not null unique,  -- evita duplicar el mismo incidente
  fecha             timestamptz,
  proyecto          text,
  workflow          text,
  enlace_ejecucion  text,
  nodo              text,
  mensaje           text,
  estado_atencion   text not null default 'pendiente',
  creado_en         timestamptz not null default now()
);

-- 4) SEGURIDAD (RLS) --------------------------------------------------
-- Se activa RLS y NO se crean políticas para anon/authenticated:
-- así nadie con la clave pública (anon) puede leer ni escribir.
-- n8n usa la clave service_role, que se salta RLS por diseño.
alter table public.stock_productos    enable row level security;
alter table public.alertas_reposicion enable row level security;
alter table public.incidentes         enable row level security;

-- 5) PERMISOS EXPLÍCITOS PARA service_role (lo que usa n8n) -----------
grant usage on schema public to service_role;
grant select, insert, update, delete on public.stock_productos    to service_role;
grant select, insert, update, delete on public.alertas_reposicion to service_role;
grant select, insert, update, delete on public.incidentes         to service_role;
grant usage, select on all sequences in schema public to service_role;

-- 6) DATOS FICTICIOS DE PRUEBA ----------------------------------------
insert into public.stock_productos (producto, stock, stock_minimo) values
  ('Peluche Stitch',            3, 10),   -- stock < mínimo   -> prioridad Alta
  ('Peluche Mickey',           10, 10),   -- stock = mínimo   -> prioridad Mediana
  ('Camiseta Roja',            50, 10),   -- stock > mínimo   -> No requiere reposición
  ('Taza Blanca',               8,  5),   -- stock > mínimo   -> No requiere reposición
  ('Producto Prueba Sin Stock', null, 5); -- stock nulo       -> Datos no válidos

-- 7) VERIFICACIÓN (debe mostrar 5 filas) -------------------------------
select * from public.stock_productos order by id;
