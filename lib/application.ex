defmodule JsonrpcServer.Application do
  use Application

  @impl true
  def start(_type, _args) do
    port = Application.get_env(:jsonrpc_server, :port, 5000)

    children = [
      {JsonrpcServer.TcpServer, port}
    ]

    opts = [strategy: :one_for_one, name: JsonrpcServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
