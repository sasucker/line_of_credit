require 'database_cleaner'

RSpec.configure do |config|
  config.before :suite do
    DatabaseCleaner.clean_with :truncation
  end

  config.around :each do |spec|
    DatabaseCleaner.cleaning do
      spec.run
    end
  end
end
