class PatientsController < ApplicationController
  before_action :set_patient, only: %i[update destroy show]
  def index
    @patients = Patient.all

    render json: @patients
  end

  def show
    render json: @patient
  end

  def destroy
    @patient.destroy

    head :no_content
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
