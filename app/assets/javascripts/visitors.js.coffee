jQuery ->
  name = $("#welcome").data("name")
  if name
    alert 'Hello '+name+'!'