class SectionsController < ApplicationController

  layout 'admin'

  def index

    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_fields)

    if @section.save
      flash[:notice] = "A subject is crated successfully"
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_fields)
      flash[:notice] = "Section '#{@section.name}' has been updated successfully"
      redirect_to(section_path(@section))
    else
      render('edit')
    end

  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy

    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section '#{@section.name}' has been deleted successfully"

    redirect_to(sections_path)

  end

  private

  def section_fields
    params.require(:section).permit(:name, :position, :visible, :content_type, :page_id, :content)
  end
end
