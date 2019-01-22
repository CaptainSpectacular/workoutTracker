Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.framework :rspec
    with.library :rails
  end
end
