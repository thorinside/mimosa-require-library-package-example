require ["common"], ->
  require
    urlArgs: "b=#{(new Date()).getTime()}"
    ['testclient','vendor/iced'], (TestClient) ->
      await require ['app/example-view'], defer ExampleView
      view = new ExampleView()
      view.render('body')

      testclient = new TestClient("Howdy");
