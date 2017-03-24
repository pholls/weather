class PagesController < ApplicationController
  def index
    render :index
  end

  def search
    # make the API call
    # save to DB?
    render :display
  end
end
