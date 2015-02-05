class FlatController < ApplicationController
	before_filter :authenticate_user!
	def index
		@apt=Apt.find_by_user_id(current_user.id)
		@flats=Flat.where(user_id: @apt.user_id)
	end
	def new
		@f=Flat.new
	end
	def create
		@apt=Apt.find_by_user_id(current_user.id)
		@f=Flat.new
		@f.user_id=@apt.user_id
		@f.apt_id=@apt.id
		@f.flat_no=params[:fltno]
		@f.size=params[:fsize]
		@f.uds=params[:fuds]
		@f.balcony=params[:fbal]
		@f.gsize=params[:fgdn]
		@f.cpark=params[:fcpk]
		@f.penthouse=params[:fcpent]
		@f.nbed=params[:fbr]
		@f.nbath=params[:fbtr]
		@f.nkitch=params[:fktn]
		@f.nhall=params[:fhall]
		@f.ndin=params[:fdhall]
		@f.npooja=params[:fprm]
		@f.pur_date=params[:fpdate]
		@f.first_owner=params[:fown]
		@f.gn_rent=params[:frent]
		@f.f_mem=params[:fmem]
		@f.ws_tax=params[:fstax]
		@f.p_tax=params[:fptax]
		@f.due_date=params[:fddate]
		@f.save
		redirect_to('/flats')
	end
	def show
		@f=Flat.find_by_user_id(current_user.id)
	end
	def edit
	end
	def update
	end
end
