`mkdir -p wiki`
Dir.chdir('wiki') do
  `git init` rescue nil
end
