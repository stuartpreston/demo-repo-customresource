provides :powershell_file_as_user

property :filename, String, name_property: true
property :username, String
property :password, String
property :domain, String

action :execute do
  if ::File.file?(new_resource.filename)
    converge_by("executing PowerShell script: #{new_resource.filename}") do
      execution = shell_out("C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe -noprofile -executionpolicy Unrestricted -File #{new_resource.filename}", user: new_resource.username, domain: new_resource.domain, password: new_resource.password)
      puts "\n#{execution.stdout}"
    end
  end
end
