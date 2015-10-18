cd ../

Function RunOrCreate()
{
  $input = read-host "Start, Create (DB), Update (Dependencies), Test, or Exit"

  IF ($INPUT -eq 'start'){
    mix phoenix.server
  }

  IF ($INPUT -eq 'create'){
    mix ecto.create
  }

  IF($INPUT -eq 'Update'){
    mix deps.get
  }

  IF($INPUT -eq 'test'){
    mix test
  }

  if ($INPUT -ne 'EXIT'){
    RunOrCreate
  }

}

RunOrCreate
