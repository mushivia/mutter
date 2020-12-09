class MutterController < ApplicationController
    def index
        @user = User.find_by(id: params[:id])
        redirect_to mypage_path(current_user) if user_signed_in?
    end
end
