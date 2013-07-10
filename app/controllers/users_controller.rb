class UsersController < ApplicationController
  def index
  end

  def lookup
    title = params[:title].gsub(' ', '+')
    rdio = Rdio.new(["4axt3bk4j8sdecxrwmzqqbsr", "UyGwZvh8Xh"])
    @lookup = rdio.call('get', 'title')
  end
end
