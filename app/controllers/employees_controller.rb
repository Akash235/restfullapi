class EmployeesController < ApplicationController


	@employee = Employee.all
	def index
		render json: "you are not authorize to see this\n"
	end

	def create

		Employee.create(first_name: params[:employee][:firstname],email: params[:employee][:email], password_digest: params[:employee][:password], no: params[:employee][:no]) 
	end

	def edit

		Employee.find(params[:employee][:id])
	end

	def show

		render json: Employee.find(params[:id])

	end

	def update

	

		@employee = Employee.find(params[:id])
		@employee.update(first_name: params[:employee][:firstname],email: params[:employee][:email], password_digest: params[:employee][:password], no: params[:employee][:no])

	end


end
