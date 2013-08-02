require
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery'
    testclient: 'test_client'
  ['vendor/iced'], ->
    await require ['app/example-view'], defer ExampleView
    view = new ExampleView()
    view.render('body')