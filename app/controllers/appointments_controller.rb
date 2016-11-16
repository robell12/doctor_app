class AppointmentsController < ApplicationController

    def index
      @appointments = Appointment.all
    end

    def new
      @appointment = Appointment.new
    end

    def create
      @appointment = Appointment.new(appointment_params)
      if @appointment.save
        flash[:success] = "This appointment is now created"
        redirect_to root_path
      else
        render :new
      end
    end

    def destroy
      appointment = Appointment.find(params[:id])
      appointment.destroy
      flash[:success] = 'Appointment Deleted'
      redirect_to appointment_path(appointment.patient_id)
    end

    private
      def appointment_params
        params.require(:appointment).permit(:patient_id, :doctor_id, :time)
      end
end
