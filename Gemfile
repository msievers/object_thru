source "https://rubygems.org"

# Specify your gem's dependencies in object_thru.gemspec
gemspec

if !ENV["CI"]
  group :development do
    gem "pry",                "~> 0.9.12.6"
    gem "pry-syntax-hacks",   "~> 0.0.6"

    if RUBY_ENGINE == "ruby"
      gem "pry-byebug",         "<= 1.3.2"
      gem "pry-rescue",         "~> 1.4.1"
      gem "pry-stack_explorer", "~> 0.4.9.1"
    else
      # gem "pry-nav",            "~> 0.2.4"
    end
  end
end

group :test do
  gem "codeclimate-test-reporter", require: nil
end
