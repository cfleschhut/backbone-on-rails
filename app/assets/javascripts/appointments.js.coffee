class Appointment extends Backbone.Model
  urlRoot: "/api/appointments"

  # defaults: ->
  #   title: "Checkup"
  #   date: new Date()

  cancel: ->
    this.set(cancelled: true)
    this.save()

  delete: ->
    this.destroy()


window.appointment = new Appointment
  id: 1

appointment.on "change", ->
  $("#container").prepend(appointmentView.el)

# appointment.fetch()

# appointment.set
#   cancelled: true
# appointment.save()


class AppointmentList extends Backbone.Collection
  model: Appointment


class AppointmentView extends Backbone.View
  tagName: "li"
  className: "appointment"

  template: _.template('
    <span class="<% if(cancelled) print("cancelled") %>">
      <%= date %> <%= title %>
    </span>
    <a class="cancel">cancel</a>
    <a class="delete">delete</a>
  ')

  events:
    "click .cancel": "cancel"
    "click .delete": "delete"

  initialize: ->
    @model.on "change", @render, @
    @model.on "destroy", @remove, @

  cancel: (ev) ->
    @model.cancel()

  delete: (ev) ->
    @model.delete()

  render: ->
    @$el.html(@template(@model.attributes))
    this


window.appointmentView = new AppointmentView
  model: appointment


$(document).ready ->
  window.appointments = new AppointmentList
  appointments.reset($("#container").data("appointments"))
