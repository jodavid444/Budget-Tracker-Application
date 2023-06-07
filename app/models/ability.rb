class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Entity, author_id: user.id
    can :manage, Category, author_id: user.id
    cannot :manage, Entity do |entity|
      entity.author_id != user.id
    end

    cannot :manage, Category do |category|
      category.author_id != user.id
    end
  end
end
