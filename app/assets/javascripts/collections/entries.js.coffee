class Raffler.Collections.Entries extends Backbone.Collection
  url: '/api/entries'
  model: Raffler.Models.Entry

  comparator: (entry) ->
    return entry.get('name')

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
