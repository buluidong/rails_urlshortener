class UrlController < ApplicationController

  def index
    @urls = Url.all
  end

  def create
    @url = Url.create(url_params)

    redirect_to url_index_path
  end



  def new
    @url = Url.new(count:0)
  end

  private
  def url_params
    params.require(:url).permit(:url, :bitly, :count)
  end


end
