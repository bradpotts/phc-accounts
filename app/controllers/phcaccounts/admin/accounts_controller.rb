require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Admin::AccountsController < ApplicationController

    # Security & Custom Layout Filters
    before_action :phcaccounts_authentication_filter!

    # Administrator Index
    def index
      @admin_users = Phcaccounts::User.all
    end

  end
end
