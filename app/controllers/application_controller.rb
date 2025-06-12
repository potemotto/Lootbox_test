class ApplicationController < ActionController::Base
  # Deviseのサインイン後リダイレクト先をカスタマイズ
  protected

  def after_sign_in_path_for(resource_or_scope)
    lists_path  # ListsController#index のルートヘルパー
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #allow_browser versions: :modern
end
