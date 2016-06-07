# demo-repo-customresource

A general demo of implementing a custom resource in a shared cookbook that is used by an 'application' cookbook, complete with RSpec/ChefSpec matcher.

## Testing

```
PS C:\temp\demo-repo-customresource\cookbooks\myapp> rspec --format documentation

myapp::default
  When all attributes are default, on an unspecified platform
    executes powershell as user

Finished in 11.07 seconds (files took 3.35 seconds to load)
1 example, 0 failures
```
