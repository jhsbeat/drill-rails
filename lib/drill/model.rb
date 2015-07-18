
module Drill
  module Model
    
    def self.included(base)
      base.class_eval do

      end      
    end

    module ClassMethods
      
      def client
        @client ||= Drill::Client.new
      end
      
      def client=(client)
        @client = client
      end

    end
    extend ClassMethods
    
    class NotImplemented < NoMethodError; end
  end 

end
