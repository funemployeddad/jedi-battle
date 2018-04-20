class StaticPagesController < ApplicationController
  skip_before_action :verify_jedi_is_authenticated, only: [:home]
  def home
  end
end
