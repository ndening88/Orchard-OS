-- Run this entire file in Supabase SQL Editor (Project → SQL Editor → New query)

-- Farm config (one shared row for the whole farm)
create table if not exists farm_config (
  id text primary key,
  config jsonb not null,
  updated_at timestamptz default now()
);

-- Field logs (one row per log entry, shared across all users)
create table if not exists field_logs (
  id uuid primary key default gen_random_uuid(),
  data jsonb not null,
  user_name text,
  created_at timestamptz default now()
);

-- Farm data measurements
create table if not exists farm_data (
  id uuid primary key default gen_random_uuid(),
  data jsonb not null,
  user_name text,
  created_at timestamptz default now()
);

-- Photos (metadata + url to Storage)
create table if not exists photos (
  id uuid primary key default gen_random_uuid(),
  data jsonb not null,
  url text,
  user_name text,
  created_at timestamptz default now()
);

-- Activity status overrides (only stores changes from default "pending")
create table if not exists activity_status (
  act_id text primary key,
  status text not null default 'pending',
  scheduled_date date,
  assignee text,
  notes text,
  updated_by text,
  updated_at timestamptz default now()
);

-- Enable real-time on all shared tables
alter publication supabase_realtime add table field_logs;
alter publication supabase_realtime add table farm_data;
alter publication supabase_realtime add table photos;
alter publication supabase_realtime add table activity_status;

-- Allow public read/write (fine for a private family farm app)
alter table farm_config enable row level security;
alter table field_logs enable row level security;
alter table farm_data enable row level security;
alter table photos enable row level security;
alter table activity_status enable row level security;

create policy "public_all" on farm_config for all using (true) with check (true);
create policy "public_all" on field_logs for all using (true) with check (true);
create policy "public_all" on farm_data for all using (true) with check (true);
create policy "public_all" on photos for all using (true) with check (true);
create policy "public_all" on activity_status for all using (true) with check (true);

-- After running this SQL, go to Storage → New bucket → name "photos" → Public → Create
