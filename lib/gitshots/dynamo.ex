defmodule Gitshots.Dynamo do
  use Dynamo

  config :dynamo,
    env: Mix.env,

    otp_app: :gitshots,
    endpoint: ApplicationRouter,

    static_route: "/static"
  templates do
    use Dynamo.Helpers
  end
end
