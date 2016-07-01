defmodule RpcTest do
  def run do 
    Task.Supervisor.async( {DBServer.DistSupervisor, :'dbserver@hostname'},  fn -> "test" end)
    |> Task.await
    |> IO.inspect
  end
end
