class PositionsController < ApplicationController

  def new
    @company = Company.find_by(id: params[:company_id])
    @position = @company.positions.build
    #@position = Position.new
  end

  def create
    if @company = Company.find_by(id: params[:company_id])
      @position = @company.positions.build(position_params)

      if @company && @position
        @position.save
        current_user.checklists.create(company_id: @company.id, position_id: @position.id)
        redirect_to company_position_path(@company, @position)
      else
        #need error message
        render 'new'
      end
    #elsif !@company
      #need error message
      #redirect_to company_path
    end
  end

  def show
    @position = Position.find_by(id: params[:id])
  end

  def edit
    @position = Position.find_by(id: params[:id])
  end

  def update
    @position = Position.find_by(id: params[:id])
    @position.update(position_params)
    redirect_to company_position_path(@position.company, @position)

    #error message if else
  end

  private
    def position_params
      params.require(:position).permit(:title, :description, :salary, :full_time, :company_id)
    end

end
