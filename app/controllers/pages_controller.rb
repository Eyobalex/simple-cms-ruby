class PagesController < ApplicationController


  layout 'admin'

  def index

    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_fields)

    if @page.save
      flash[:notice] = "A page is crated successfully"
      redirect_to(pages_path)
    else
      render('new')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_fields)
      flash[:notice] = "Page '#{@page.name}' has been updated successfully"
      redirect_to(page_path(@page))
    else
      render('edit')
    end

  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy

    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Page '#{@page.name}' has been deleted successfully"

    redirect_to(pages_path)

  end

  private
  def page_fields
    params.require(:page).permit(:name, :position, :visible, :permalink, :subject_id)
  end
end
