class UsersController<ApplicationController
  skip_before_action :verify_authenticity_token
  def new
    @user = User.new
  end
  def create
    @user=User.new(users_params)
    @user.save
    redirect_to users_path
  end
  def index
    @user = User.all
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to users_path
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end
  def search
    @user = User.where(age:params[:info])
    unless  @user.size>=0
      flash.now[:notice] =  "No user found matching your criteria"
    end
    render "index"
  end
  private
  def users_params
    params.require(:user).permit(:name,:age)
  end
end