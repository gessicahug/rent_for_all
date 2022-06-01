class RentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  # quando clica no botão rent executa o meyto create

  def create?
    true
  end

  def destroy?
    buyer?
  end

  private

  def buyer?
    record.user == user
  end

end
