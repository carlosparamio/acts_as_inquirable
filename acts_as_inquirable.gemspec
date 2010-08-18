Gem::Specification.new do |s|
  s.name     = "acts_as_inquirable"
  s.version  = "0.0.1"
  s.date     = "2009-03-09"
  s.summary  = "A helper to wrap an ActiveRecord attribute with ActiveSupport::StringInquirer."
  s.email    = "carlosparamio@gmail.com"
  s.homepage = "http://github.com/carlosparamio/acts_as_inquirable/"
  s.description = "A helper to wrap an ActiveRecord attribute with ActiveSupport::StringInquirer."
  s.authors  = ["Carlos Paramio"]
  
  s.files    = [
		"README.rdoc",
		"acts_as_inquirable.gemspec", 
		"lib/active_record/acts/inquirable.rb"
	]
  
  s.add_dependency("activesupport",   [">= 2.2.0"])
  
  s.has_rdoc = false
  s.rdoc_options = ["--main", "README.rdoc"]
end