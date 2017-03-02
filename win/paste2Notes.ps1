$path = "$HOME\myNotes"
$notesFile = (Get-date -Format 'yyyyMM') + '.mkd'

$theImgae = Get-Clipboard -Format Image
If ($theImgae) 
{
    $imageFile = "$path\" + (Get-date -Format 'yyyyMMdd-HHmmsshh') + '.png'
    $theImgae.Save($imageFile,'png')

    $theNotes = "*   ![]($imageFile){width=640}`r`n"
    Out-File -FilePath "$path\$notesFile" -Encoding utf8 -InputObject $theNotes -Append
    Set-Clipboard -Value $Null
}
else
{
    $theText = Get-Clipboard -Format Text
    if ($theText)
    {
        $theNotes = "*   $theText`r`n"
        Out-File -FilePath "$path\$notesFile" -Encoding utf8 -InputObject $theNotes -Append
        Set-Clipboard -Value $Null
    }
}
 