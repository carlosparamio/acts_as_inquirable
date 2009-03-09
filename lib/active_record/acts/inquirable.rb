module ActiveRecord
  module Acts
    module Inquirable
      def self.included(base)
        base.extend(ClassMethods)
      end
      
      module ClassMethods
        def acts_as_inquirable(*args)
          args.each do |name|
            class_eval <<-EOV
              def #{name}
                ActiveSupport::StringInquirer.new read_attribute(:#{name}).to_s
              end
            EOV
          end
        end
      end
    end
  end
end