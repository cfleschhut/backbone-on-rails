class AppointmentsController < ApplicationController
  respond_to :json

  def index
    respond_with Appointment.all
  end

  def show
    respond_with Appointment.find(params[:id])
  end

  def create
    respond_with Appointment.create(params[:appointment])
  end

  def update
    respond_with Appointment.update(params[:id], params[:appointment])
  end

  def destroy
    respond_with Appointment.destroy(params[:id])
  end
end
