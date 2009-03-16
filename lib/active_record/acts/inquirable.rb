module ActiveRecord
  module Acts
    module Inquirable
      def acts_as_inquirable(*args)
        args.each do |name|
          class_eval %{
            def #{name}
              ActiveSupport::StringInquirer.new read_attribute(:#{name}).to_s
            end
          }
        end
      end
    end
  end
end