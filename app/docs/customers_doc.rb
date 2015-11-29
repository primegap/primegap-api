module CustomersDoc
  extend BaseDoc
  resource :customers

  resource_description do
    formats [:json]
    api_versions 'public'
  end

  def_param_group :customer do
    param :customer, Hash, required: true, action_aware: true, desc: 'Customer information' do
      param :full_name, String, 'Full name of the customer', required: true
      param :email, String, 'Email address of the customer'
      param :phone, String, 'Phone number of the customer'
      param :company_id, Fixnum, 'Company ID of the customer'
    end
  end

  doc_for :index do
    api! 'List customers'
    description 'Returns all the customers'
  end

  doc_for :show do
    api! 'Show customer'
    description 'Returns customer with provided id'
    param :id, Fixnum, required: true, desc: 'Id of customer you want to fetch'
  end

  doc_for :create do
    api! 'Create customer'
    description 'Creates customer with specifed customer params'
    param_group :customer
  end

  doc_for :update do
    api! 'Update customer with provided id'
    description 'Updates existing customer with specifed customer params'
    param :id, Fixnum, required: true, desc: 'Id of customer you want to update'
    param_group :customer
  end

  doc_for :destroy do
    api! 'Destroy customer with provided id'
    description 'Deletes existing customer with specifed customer params'
    param :id, Fixnum, required: true, desc: 'Id of customer you want to delete'
  end
end
