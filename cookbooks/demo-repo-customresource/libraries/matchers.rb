if defined?(ChefSpec)
  def execute_powershell_file_as_user(filename)
    ChefSpec::Matchers::ResourceMatcher.new(:powershell_file_as_user, :execute, filename)
  end
end
