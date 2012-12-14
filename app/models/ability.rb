class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new # Guest user
    if user.role == "admin"
      can :manage, :all
     elsif user.role == "moderator"
      can :index, User
    end
  end
end


