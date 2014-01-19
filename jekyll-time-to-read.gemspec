Gem::Specification.new do |s|
  s.name                  = "jekyll-time-to-read"
  s.version               = "0.1.1"
  s.summary               = "A liquid tag for Jekyll to indicate the time it takes to read an article."
  s.authors               = "Garen J. Torikian"
  s.homepage              = "https://github.com/gjtorikian/jekyll-time-to-read"
  s.license               = "MIT"
  s.files                 = ["lib/jekyll-time-to-read.rb"]

  s.add_dependency "jekyll"
  s.add_development_dependency "rspec", "~> 2.13.0"
  s.add_development_dependency "rake"
end
