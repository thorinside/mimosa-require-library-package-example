define ['jquery'], ($) ->

    class TestClient

        constructor: (@greeting) ->

            alert(@greeting)

    TestClient
