class CompaniesController < ApplicationController

	before_action :load_company, only: [:show, :edit]

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)
		if @company.valid?
			@company.save
			redirect_to companies_path
		else
			flash[:error]
			render :new
		end
	end

	def update
		- if flash[:error].present?
			=flash[:error]
		c = Company.find_by(params[:id])
		if c.update(company_params)
			c.save!
		else
			redirect_to edit_company_path(c.id)
		end	
		 
	end

	def load_company
		@company = Company.find(params[:id])
	end

	def index
		@company = Company.all
	end

	def edit
		@company = Company.find(params[:id])
	end

	def destroy
		@c = Company.find_by(params[:id])
		@c.destroy
		redirect_to companies_path
	end

private
	def company_params
		params.require(:company).permit(:name, :email, :location)
	end

	def id_params
		params.require(:company).permit(:id)
	end
end
