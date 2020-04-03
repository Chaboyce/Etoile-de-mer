class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
   record.user == admin
  end

  def update?
   record.user == admin
  end

  def destroy?
   record.user == admin
  end

end
