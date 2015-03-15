class Raffler.Models.Entry extends Backbone.Model
  urlRoot: '/api/entries'

  win: ->
    @set(winner: true)
    @save()
    @trigger('highlight')

  delete: ->
    @destroy()
