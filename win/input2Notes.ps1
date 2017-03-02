$notesFile = "$HOME\myNotes\" + (Get-date -Format 'yyyyMM') + '.mkd'

$theText = Read-Host -Prompt "Input the notes text"
$theNotes = "*   $theText`r`n"
Out-File -FilePath $notesFile -Encoding utf8 -InputObject $theNotes -Append
 