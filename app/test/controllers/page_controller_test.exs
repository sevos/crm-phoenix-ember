defmodule Crm.PageControllerTest do
  use Crm.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert conn.resp_body =~ "Welcome to Phoenix!"
  end
end
