class AddIndexOnUsersEmail < ActiveRecord::Migration[7.2]
  def change
    ActiveRecord::Base.connection.execute(<<-SQL)
      CREATE INDEX idx_users_email_domain ON users (email_domain(email));
    SQL
  end
end
