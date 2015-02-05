class AptController < ApplicationController
	before_filter :authenticate_user!
	
	def new
		@apt=current_user.apt.build
	end
	def create
		@apt=current_user.apt.build
		@apt.apt_id=params[:aptid]
		@apt.apt_name=params[:aptname]
		@apt.start_date=params[:sdate]
		@apt.comp_date=params[:cdate]
		@apt.apt_type=params[:apttype]
		@apt.no_of_blocks=params[:nob]
		@apt.no_of_villa=params[:noov]
		@apt.street=params[:street]
		@apt.unit=params[:unit]
		@apt.postal_code=params[:postcode]
		@apt.city=params[:city]
		@apt.country=params[:country]
		@apt.state=params[:state]
		@apt.patta_no=params[:pattano]
		@apt.regd_office=params[:regdoff]
		@apt.total_sq_ft=params[:tsqft]
		@apt.facing=params[:face]
		@apt.length_sq_ft=params[:lsqft]
		@apt.breadth_sq_ft=params[:bsqft]
		@apt.urban_tax=params[:urbtax]
		@apt.save
		redirect_to ('/index')
	end
	def show
		@apt=Apt.find_by_user_id(current_user.id)
	end
	def edit
		@apt=Apt.find_by_user_id(current_user.id)
	end
	def update
		@apt=Apt.find_by_user_id(current_user.id)
		@apt.update_attributes(:apt_id => params[:aptid],:apt_name => params[:aptname],:start_date => params[:sdate],:comp_date => params[:cdate],:apt_type => params[:apttype],:no_of_blocks => params[:nob],:no_of_villa => params[:noov],:street => params[:street],:unit => params[:unit],:postal_code => params[:postcode],:city => params[:city],:country => params[:country],:state => params[:state],:patta_no => params[:pattano],:regd_office => params[:regdoff],:total_sq_ft => params[:tsqft],:facing => params[:face],:length_sq_ft => params[:lsqft],:breadth_sq_ft => params[:bsqft],:urban_tax => params[:urbtax])
		redirect_to ('/aptview')
	end
end
