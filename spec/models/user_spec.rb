RSpec.describe User, type: :model do
  describe '.find_by_domain' do
    before do
      FactoryBot.create_list(:user, 350_000)
    end
    after do
      puts "Number of users: #{User.count}"
      puts "===="
      puts explain_output
    end
    let(:query) { User.find_by_domain('gmail.com') }
    let(:explain_output) { query.explain(:analyze).inspect }
    let(:index_regex) { /(Index Scan using idx_users_email_domain|Bitmap Index Scan on idx_users_email_domain)/ }
    let(:index_cond) { /Index Cond: \(email_domain\(\(email\)::text\) = 'gmail\.com'::text\)/ }

    it do
      expect(explain_output).to match(index_regex)
      expect(explain_output).to match(index_cond)
    end
  end
end
