class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        # 新規登録時に nickname というキーのパラメータも許可することを設定
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end
end
