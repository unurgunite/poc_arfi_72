class User < ApplicationRecord
  # PoC of ARFI working with custom indexes.
  # @example
  #   poc-arfi72(dev)> User.find_by_domain('gmail.com').to_sql
  #   => "SELECT \"users\".* FROM \"users\" WHERE (email_domain(email) = 'gmail.com')"
  # It also works with EXPLAIN ANALYZE
  # @example
  #   poc-arfi72(dev)> User.find_by_domain('gmail.com').explain(:analyze)
  #     User Load (1429.9ms)  SELECT "users".* FROM "users" WHERE (email_domain(email) = 'gmail.com')
  #   =>
  #   EXPLAIN (ANALYZE) SELECT "users".* FROM "users" WHERE (email_domain(email) = 'gmail.com')
  #                                                                    QUERY PLAN
  #   --------------------------------------------------------------------------------------------------------------------------------------------
  #   Index Scan using idx_users_email_domain on users  (cost=0.29..16587.88 rows=82721 width=99) (actual time=0.028..15.282 rows=83934 loops=1)
  #      Index Cond: (email_domain((email)::text) = 'gmail.com'::text)
  #   Planning Time: 0.062 ms
  #   Execution Time: 17.657 ms
  #   (4 rows)
  def self.find_by_domain(domain)
    where("email_domain(email) = ?", domain.downcase)
  end
end
