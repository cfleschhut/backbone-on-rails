window.Raffler =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @router = new Raffler.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Raffler.initialize()
