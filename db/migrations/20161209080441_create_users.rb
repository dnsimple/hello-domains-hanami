Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :uid,   Integer, null: false, unique: true
      column :type,  String,  null: false
      column :email, String,  null: false
      column :token, String,  null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
