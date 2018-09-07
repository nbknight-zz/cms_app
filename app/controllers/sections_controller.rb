class SectionsController < ApplicationController

    layout 'admin'
  before_action :find_pages, :only => [:new, :create, :edit, :update]
  before_action :set_section_count , :only => [:new, :create, :edit, :update]

  def index
    @sections = Section.sorted
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
    
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section saved successfully"
      redirect_to(sections_path)
    else
      @section_count = Section.count + 1
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
    
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
      flash[:notice] = "Section updated successfully"
      redirect_to(sections_path(@section))
    else
      @section_count = Section.count
      render('edit')      
    end
  end

  def destroy
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section '#{@section.name}' destroyed successfully."    
    redirect_to(subjects_path)
  end

  private

  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content_type, :content)
  end

  def find_pages
    @pages = Page.sorted
  end

  def set_section_count
  @section_count = Section.count
    if params[:actions] == 'new' || params[:actions] == 'create'
      @section_count = Section.count + 1
    end
  end

end
