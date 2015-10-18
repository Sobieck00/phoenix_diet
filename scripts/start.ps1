cd ../

Function RunOrCreate()
{
  $input = read-host "Start, Create (For DB), Dep or Exit"

  IF ($INPUT -eq 'start'){
    mix phoenix.server
  }

  IF ($INPUT -eq 'create'){
    mix ecto.create
  }

  IF($INPUT -eq 'dep'){
    mix deps.get
  }

  if ($INPUT -ne 'EXIT'){
    RunOrCreate
  }

}

RunOrCreate
