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

  def patient_params
    params.require(:patient).permit(:first_name,
                                    :last_name,
                                    :born_on,
                                    :diagnosis)
  end

  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: unprocessable_entity
    end
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
