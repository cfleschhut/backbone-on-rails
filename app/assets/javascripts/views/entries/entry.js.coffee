class Raffler.Views.Entry extends Backbone.View
  template: JST['entries/entry']
  tagName: 'li'

  events:
    # 'click': 'showEntry'
    "click .deleteEntry": "deleteEntry"

  initialize: ->
    @model.on('change', @render, this)
    @model.on "destroy", @remove, this
    @model.on('highlight', @highlightWinner, this)

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  deleteEntry: ->
    @model.delete()

  highlightWinner: ->
    $('.panel').removeClass('callout')
    @$('.panel').addClass('callout')

  render: ->
    $(@el).html(@template(entry: @model))
    this
