Function Add-Item-To-String($string, $item)
{
  $newString = $string -join $item
  return $newString + " "
}

Function Add-Columns($command)
{
  $nameOfColumn = read-host "What is the name of the column?"
  $type = read-host "What is the type? string (s), integer(i)"
  $continue = read-host "More Y/N"

  if($type -eq 's')
  {
    $type = ":string"
  }

  $newItemToAdd = $nameOfColumn + $type

  $newString = Add-Item-To-String($command, $newItemToAdd)

  if($continue -eq 'Y')
  {
    Add-Columns($newString)
  }
  else
  {
    cd ../

    Invoke-Expression $newString
  }
}

$nameOfObject = read-host "What is the name of your object?"
$nameOfTable = read-host "What is the name of the table?"

$firstJoin = Add-Item-To-String("mix phoenix.gen.json ", $nameOfObject)
$secondJoin = Add-Item-To-String($firstJoin, $nameOfTable)

Add-Columns($secondJoin)
