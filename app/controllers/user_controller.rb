class UserController < ApplicationController

  def show
    user = User.find_by_name(params[:name])
    logger.debug(user.to_json)
    render json: user.to_json
    #    render json: '{code:ok}'
  end

  def create
    user = User.new({name: params[:name], email: 'dumy@dumy'})
    user.save
  end

  def save
    user = User.find_by_name(params[:name])
    user.age = user.age + 1
    user.save
  end

  def delete
    User.delete(params[:id])
  end
end
