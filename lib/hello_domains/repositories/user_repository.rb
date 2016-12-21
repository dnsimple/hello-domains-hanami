class UserRepository < Hanami::Repository
  def find_or_create_by_uid(uid, data)
    user = by_uid(uid)

    unless user.nil?
      refresh_token(uid, data)
      return user
    end

    create(data)
  end

  def by_uid(uid)
    users.where(uid: uid).as(:entity).one
  end

  def refresh_token(uid, data)
    users.where(uid: uid).update(token: data[:token])
  end
end
