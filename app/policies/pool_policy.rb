# frozen_string_literal: true

class PoolPolicy
  attr_reader :user, :record
  
  def initialize(user, record)
    @user = user
    @record = record
  end
  
  def index?
    user.has_role? :manager
  end
  
  def show?
    false
  end
  
  def create?
    user.has_role? :manager
  end
  
  def new?
    user.has_role? :manager
  end
  
  def update?
    false
  end
  
  def edit?
    update?
  end
  
  def destroy?
    user.has_role? :manager
  end
end