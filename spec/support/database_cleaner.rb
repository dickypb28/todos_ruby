RSpec.configure do |config|

    config.before(:suite) do
      DatabaseCleaner.clean_with(:truncation)
    end
  
    config.before(:each) do |example|
      DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction
      DatabaseCleaner.start
    end
  
    config.after(:each) do
      DatabaseCleaner.clean
    end
     
  end


#  RSpec.configure do |config|
#     config.before(:suite) do
#         Database.clean_with(:truncation)
#     end

#     config.before(:each) do
#         Database.strategy = :transaction
#     end

#     config.before(:each, js: true) do
#         Database.strategy = :truncation
#     end

#     config.before() do
#         Database.start
#     end

#     config.before() do
#         Database.clean
#     end
# end