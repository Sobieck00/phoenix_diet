defmodule PhoenixDiet.WriteControllerTest do
  use PhoenixDiet.ConnCase

  test "GET /" do
    conn = get conn(), "/api/write/123"
    assert json_response(conn, 200) == %{"id" => "123"}
  end
end
