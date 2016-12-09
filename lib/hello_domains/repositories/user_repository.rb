class UserRepository < Hanami::Repository
  def find_or_create_by_uid(uid, data)
    by_uid(uid) ||
      create(data)
  end

  def by_uid(uid)
    users.where(uid: uid).as(:entity).one
  end
end
