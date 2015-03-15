class Appointment extends Backbone.Model
  urlRoot: "/api/appointments"

  defaults: ->
    title: "Checkup"
    date: new Date()

appointment = new Appointment
  id: 1
appointment.fetch()

class AppointmentView extends Backbone.View
  tagName: 'ul'
  template: _.template("<li><%= title %> <%= date %></li>")

  render: ->
    $(@el).html(@template(@model.attributes))
    this

window.appointmentView = new AppointmentView
  model: appointment


$(document).ready ->
  $("#container").prepend(appointmentView.render().el)
