module BaseDoc
  include Apipie::DSL::Concern

  def doc_for(action_name, &block)
    instance_eval(&block)
    define_method(action_name) do
      # ... define it in your controller with the real code, blank here
    end
  end
end
