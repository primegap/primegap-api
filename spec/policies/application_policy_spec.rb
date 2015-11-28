require 'rails_helper'

RSpec.describe ApplicationPolicy, type: :model do
  subject { ApplicationPolicy.new(user, record) }

  let(:user) { User.create(email: 'user@example.com', password: 'password') }
  let(:record) { double(:record) }

  it { should_not permit(:index) }
  it { should_not permit(:show) }
  it { should_not permit(:create) }
  it { should_not permit(:update) }
  it { should_not permit(:destroy) }
end
