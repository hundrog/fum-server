module Authorization
  extend ActiveSupport::Concern

  included do
    def authenticate_editor!
      head :forbidden unless authenticate_user! and (current_user.editor? || current_user.admin?)
    end

    def authenticate_admin!
      head :forbidden unless authenticate_user! and current_user.admin?
    end
  end
end