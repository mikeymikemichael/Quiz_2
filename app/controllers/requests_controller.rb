class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def edit
    @request = Request.find(params[:id])
  end

  def index
    @requests = Request.all
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      flash[:notice] = "Request Successfully Submitted"
      redirect_to request_path(@request)
    else
      render "new"
    end
  end

    def update
      @request = Request.find(params[:id])
      if @request.update(request_params)
        flash[:notice] = "Submission was Successfully Edited"
        redirect_to request_path(@request)
      else
        render "edit"
      end
    end

    def show
      @request = Request.find(params[:id])
    end

    def destroy
      @request = Request.find(params[:id])
      @request.destroy
      flash[:notice] = "Submission was Successfully Deleted"
      redirect_to requests_path
    end

  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :department, :message,)

  end
