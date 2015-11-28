require 'rails_helper'

RSpec.describe CustomerPolicy, type: :model do
  subject { CustomerPolicy.new(user, customer) }

  let(:user) { User.create(email: 'user@example.com', password: 'password', company_id: company_id) }
  let(:customer) { Customer.create(full_name: 'John Doe', email: 'john.doe@example.com', phone: '123456789', company_id: 1) }

  context 'for a user of the same company' do
    let(:company_id) { 1 }

    it { should permit(:index) }
    it { should permit(:show) }
    it { should permit(:create) }
    it { should permit(:update) }
    it { should permit(:destroy) }
  end

  context 'for a user of a different company' do
    let(:company_id) { 2 }

    it { should permit(:index) }
    it { should_not permit(:show) }
    it { should_not permit(:create) }
    it { should_not permit(:update) }
    it { should_not permit(:destroy) }
  end
end
