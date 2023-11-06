# React Server Components and Supabase

[![Made with Supabase](https://supabase.com/badge-made-with-supabase.svg)](https://supabase.com)

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

### GraphQL with Supabase

Querying all tutorials data with graphql:

```graphql
{
  tutorialCollection(first: 10) {
    edges {
      node {
        title
        views
      }
    }
  }
}
```

Querying tutorials data with graphql:

```graphql
{
  tutorialCollection(filter: { id: { eq: 10 } }) {
    edges {
      node {
        id
        title
        views
      }
    }
  }
}
```

### PSQL with Supabase

```bash
schlpbch@Courier:~/code/rsc-firststeps$ psql 'postgresql://postgres:postgres@localhost:54322/postgres'
psql (15.4 (Ubuntu 15.4-1ubuntu1), server 15.1 (Ubuntu 15.1-1.pgdg20.04+1))
Type "help" for help.
postgres=> select title from tutorial;
```
