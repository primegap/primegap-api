module SessionsDoc
  extend BaseDoc

  def self.superclass
    SessionsController
  end

  resource_description do
    resource_id 'Session'
    formats [:json]
  end

  doc_for :create do
    api! 'Create a session (login)'
    description 'Creates a new session if the user credentials are correct'
    param :user, Hash, required: true, action_aware: true, desc: 'User credentials' do
      param :email, String, 'Email address of the user', required: true
      param :password, String, 'Password of the user', required: true
    end
  end

  doc_for :destroy do
    api! 'Destroy a session (logout)'
    description 'Deletes the existing session of the current authenticated user'
  end
end
