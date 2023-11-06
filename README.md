# React Server Components and Supabase

## Usage

First, install [JSON Server](https://www.npmjs.com/package/json-server) with the
following command:

```bash
npm install -D json-server

```

Then add the following script to `package.json` to watch the data folder:

```json
"scripts": {
    // ...next.js scripts
    "json-server": "json-server --watch --port 4000 ./data/db.json",
  }
```

Start the development server with the following command:

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the
result.

## Adding supabase locally

Getting started with supabase locally:

```bash
npx supabase init
npy supabase start
```

Generate typescript types from supabase:

```bash
npx supabase gen types typescript --local > lib/schema.ts
```

Dump data from supabase:

```bash
 npx supabase db dump --local -f supabase/roles.sql --role-only
 npx supabase db dump --local -f supabase/schema.sql
 npx supabase db dump --local -f supabase/data.sql --use-copy --data-only
```
