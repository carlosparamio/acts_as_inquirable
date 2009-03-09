$:.unshift "#{File.dirname(__FILE__)}/lib"
require 'active_support'
require 'active_record/acts/inquirable'
ActiveRecord::Base.send(:include, ActiveRecord::Acts::Inquirable)