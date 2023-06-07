class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Transaction, author_id: user.id
    can :manage, Category, author_id: user.id
  end
end
