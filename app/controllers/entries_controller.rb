class EntriesController < ApplicationController
  def index
    @entries = Account.find(1).entries.order(created_at: :desc).limit(50)
  end
end
