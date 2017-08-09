class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:e_mail])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Oturum Açıldı.'
    else
      flash.now[:error] = "Kullanıcı adı/parola hatalı."
      redirect_to login_url
    end
  end

  def destroy
    logout
    redirect_to login_url, notice: 'Oturumunuz sonlandırıldı.'
  end
end
