# Rumbrella

## Prerequisites

Ensure you have Elixir installed:
elixir --version

If you don't have Elixir installed, visit the [Elixir Getting Started](https://elixir-lang.org/install.html) page.

## Getting Started

1. Change to the rumbl app directory:

  `cd apps/rumbl`

2. Install dependencies:

  `mix deps.get`

3. Create database:

  `mix ecto.create`

4. Run the migration:

  `mix ecto.migrate`
  
5. Seed the database:

`mix run priv/repo/seeds.exs`

6. Install JavaScript packages:

  `npm install`

7. Run the phoenix server:
  `mix phoenix server`

Checkout the wiki to see more on how to get started and deploy to production.

