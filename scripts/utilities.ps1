cd ../

Function RunOrCreate()
{
  $input = read-host "Start (S), Create DB (C), Update Dependencies (U), Test (T), Migrate (M), Routes (R), Help (H), Execute Command (ec) or Exit (E)"

  IF ($INPUT -eq 's'){
    mix phoenix.server
  }

  IF ($INPUT -eq 'c'){
    mix ecto.create
  }

  IF ($INPUT -eq 'r'){
    mix phoenix.routes
  }

  IF($INPUT -eq 'u'){
    mix deps.get
  }

  IF($INPUT -eq 't'){
    mix test
  }

  IF($INPUT -eq 'm'){
    mix ecto.migrate
  }

  IF($INPUT -eq 'h'){
    mix help
  }

  if($INPUT -eq 'ec'){
    $command = read-host "What is the command"
    Invoke-Expression $command
  }

  if ($INPUT -ne 'e'){
    RunOrCreate
  }

}

RunOrCreate
