module Drill
  module Model

    module Client
      module ClassMethods
        def client client=nil
	  @client ||= Drill::Model.client
	end

	def client=(client)
	  @client = client
	end

      end

      module InstanceMethods

        def client
	  @client ||= self.class.client
	end
	def client=(client)
	  @client = client
	end

      end
    end
  end
end
