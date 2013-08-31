defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    conn.fetch([:cookies, :params])
  end

  get "/" do
    shots = Shots.all('priv/static/originals')
    conn = conn.assign(:shots, shots)
    render conn, "index.html"
  end
end
