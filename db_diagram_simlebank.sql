Table users as U {
  username varchar [pk]
  hashed_password varchar [not null]
  full_name varchar [not null]
  email varchar [unique, not null]
  password_changed_at timestamptz [not null, default:'0001-01-1 00:00:00Z']
  created_at timestamptz [not null, default: 'now()']
} 
Table accounts as A {
  id bigserial [pk]
  owner varchar [ref: > U.username, not null]
  balance bigint [not null]
  currency varchar [not null]
  created_at timestamptz [not null, default:'now()']

  Indexes {
    owner
    (owner, currency) [unique]
  }
}

Table entries {
  id bigserial [pk]
  account_id bigint [not null, ref: > A.id]
  amount bigint [not null, note: 'can be negative']
  created_at timestamptz [not null, default: 'now()']

  Indexes {
    account_id
  }
}
