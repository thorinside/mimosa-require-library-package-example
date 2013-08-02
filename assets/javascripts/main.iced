require
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery'
    testclient: 'testclient'
  ['vendor/iced'], ->
    await require ['app/example-view'], defer ExampleView
    view = new ExampleView()
    view.render('body')