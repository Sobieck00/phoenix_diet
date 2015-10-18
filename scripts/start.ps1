cd ../

Function RunOrCreate()
{
  $input = read-host "Start (S), Create DB (C), Update Dependencies (U), Test (T), or Exit (E)"

  IF ($INPUT -eq 's'){
    mix phoenix.server
  }

  IF ($INPUT -eq 'c'){
    mix ecto.create
  }

  IF($INPUT -eq 'u'){
    mix deps.get
  }

  IF($INPUT -eq 't'){
    mix test
  }

  if ($INPUT -ne 'EXIT'){
    RunOrCreate
  }

}

RunOrCreate
