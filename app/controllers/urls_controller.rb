class UrlsController < ApplicationController
  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    if @url.save
      redirect_to @url
    else
      render :new
    end
  end

  def redirect
    @url = Url.where(shorten_url: params[:shorten_url]).first

    redirect_to @url.given_url
  end

  private
  def url_params
    params.require(:url).permit(:given_url)
  end
end
