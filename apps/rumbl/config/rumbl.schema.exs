@moduledoc """
A schema is a keyword list which represents how to map, transform, and validate
configuration values parsed from the .conf file. The following is an explanation of
each key in the schema definition in order of appearance, and how to use them.

## Import

A list of application names (as atoms), which represent apps to load modules from
which you can then reference in your schema definition. This is how you import your
own custom Validator/Transform modules, or general utility modules for use in
validator/transform functions in the schema. For example, if you have an application
`:foo` which contains a custom Transform module, you would add it to your schema like so:

`[ import: [:foo], ..., transforms: ["myapp.some.setting": MyApp.SomeTransform]]`

## Extends

A list of application names (as atoms), which contain schemas that you want to extend
with this schema. By extending a schema, you effectively re-use definitions in the
extended schema. You may also override definitions from the extended schema by redefining them
in the extending schema. You use `:extends` like so:

`[ extends: [:foo], ... ]`

## Mappings

Mappings define how to interpret settings in the .conf when they are translated to
runtime configuration. They also define how the .conf will be generated, things like
documention, @see references, example values, etc.

See the moduledoc for `Conform.Schema.Mapping` for more details.

## Transforms

Transforms are custom functions which are executed to build the value which will be
stored at the path defined by the key. Transforms have access to the current config
state via the `Conform.Conf` module, and can use that to build complex configuration
from a combination of other config values.

See the moduledoc for `Conform.Schema.Transform` for more details and examples.

## Validators

Validators are simple functions which take two arguments, the value to be validated,
and arguments provided to the validator (used only by custom validators). A validator
checks the value, and returns `:ok` if it is valid, `{:warn, message}` if it is valid,
but should be brought to the users attention, or `{:error, message}` if it is invalid.

See the moduledoc for `Conform.Schema.Validator` for more details and examples.
"""
[
  extends: [],
  import: [],
  mappings: [
    "logger.console.metadata": [
      commented: false,
      datatype: [
        list: :atom
      ],
      default: [
        :request_id
      ],
      doc: "Provide documentation for logger.console.metadata here.",
      hidden: false,
      to: "logger.console.metadata"
    ],
    "logger.console.format": [
      commented: false,
      datatype: :binary,
      default: """
      [$level] $message
      """,
      doc: "Provide documentation for logger.console.format here.",
      hidden: false,
      to: "logger.console.format"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.url.host": [
      commented: false,
      datatype: :binary,
      default: "localhost",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.url.host here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.url.host"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.root": [
      commented: false,
      datatype: :binary,
      default: "/Users/Bigbassroller/Sites/space-rocket-redesign-2016/programming-phoenix/rumbrella/apps/rumbl",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.root here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.root"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.render_errors.accepts": [
      commented: false,
      datatype: [
        list: :binary
      ],
      default: [
        "html",
        "json"
      ],
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.render_errors.accepts here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.render_errors.accepts"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.pubsub.name": [
      commented: false,
      datatype: :atom,
      default: Rumbl.PubSub,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.pubsub.name here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.pubsub.name"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.pubsub.adapter": [
      commented: false,
      datatype: :atom,
      default: Phoenix.PubSub.PG2,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.pubsub.adapter here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.pubsub.adapter"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.http.port": [
      commented: false,
      datatype: :integer,
      default: 4000,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.http.port here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.http.port"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.debug_errors": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.debug_errors here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.debug_errors"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.code_reloader": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.code_reloader here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.code_reloader"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.check_origin": [
      commented: false,
      datatype: :atom,
      default: false,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.check_origin here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.check_origin"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.watchers.node": [
      commented: false,
      datatype: [
        list: :binary
      ],
      default: [
        "node_modules/brunch/bin/brunch",
        "watch",
        "--stdin"
      ],
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.watchers.node here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.watchers.node"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.live_reload.patterns": [
      commented: false,
      datatype: [
        list: :binary
      ],
      default: [
        ~r/priv\/static\/.*(js|css|png|jpeg|jpg|gif|svg)$/,
        ~r/priv\/gettext\/.*(po)$/,
        ~r/web\/views\/.*(ex)$/,
        ~r/web\/templates\/.*(eex)$/
      ],
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.live_reload.patterns here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.live_reload.patterns"
    ],
    "rumbl.Elixir.Rumbl.Endpoint.secret_key_base": [
      commented: false,
      datatype: :binary,
      default: "PlAzKHbKXR6KQerHVUSU2fIq3KXcowdxDIY2vGhS+bckJlDXI40qr06S5ByNSX/L",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Endpoint.secret_key_base here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Endpoint.secret_key_base"
    ],
    "rumbl.Elixir.Rumbl.Repo.hostname": [
      commented: false,
      datatype: :binary,
      default: "localhost",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.hostname here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.hostname"
    ],
    "rumbl.Elixir.Rumbl.Repo.adapter": [
      commented: false,
      datatype: :atom,
      default: Ecto.Adapters.Postgres,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.adapter here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.adapter"
    ],
    "rumbl.Elixir.Rumbl.Repo.username": [
      commented: false,
      datatype: :binary,
      default: "rumbl",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.username here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.username"
    ],
    "rumbl.Elixir.Rumbl.Repo.password": [
      commented: false,
      datatype: :binary,
      default: "rumbl",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.password here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.password"
    ],
    "rumbl.Elixir.Rumbl.Repo.database": [
      commented: false,
      datatype: :binary,
      default: "rumbl_devJul82016",
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.database here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.database"
    ],
    "rumbl.Elixir.Rumbl.Repo.pool_size": [
      commented: false,
      datatype: :integer,
      default: 20,
      doc: "Provide documentation for rumbl.Elixir.Rumbl.Repo.pool_size here.",
      hidden: false,
      to: "rumbl.Elixir.Rumbl.Repo.pool_size"
    ],
    "phoenix.stacktrace_depth": [
      commented: false,
      datatype: :integer,
      default: 20,
      doc: "Provide documentation for phoenix.stacktrace_depth here.",
      hidden: false,
      to: "phoenix.stacktrace_depth"
    ],
    "phoenix.generators.migration": [
      commented: false,
      datatype: :atom,
      default: true,
      doc: "Provide documentation for phoenix.generators.migration here.",
      hidden: false,
      to: "phoenix.generators.migration"
    ],
    "phoenix.generators.binary_id": [
      commented: false,
      datatype: :atom,
      default: false,
      doc: "Provide documentation for phoenix.generators.binary_id here.",
      hidden: false,
      to: "phoenix.generators.binary_id"
    ]
  ],
  transforms: [],
  validators: []
]