function  global:RenameMarkdownFile{
    $TargetFiles = Get-ChildItem -Path $args[0] -Filter "*.md"
    for($i = 0; $i -lt $TargetFiles.Length; $i++)
    {
        $FileParts = $TargetFiles[$i].Name -split " "
        if ($FileParts.Length -eq 1) {
            continue # Action to perform if the condition is true #>
        }
        $strMonth = MonthName2Month $FileParts[0]
        $strDay = $FileParts[1] -replace "th,", "" -replace "st,", "" -replace "nd,", "" -replace "rd,", ""
        $strYear = $FileParts[2] -replace ".md", ""
        $FileParts[0] = $strYear
        $FileParts[1] = $strMonth
        $FileParts[2] = if([int]$strDay -lt 10){"0" + $strDay + ".md"}else{$strDay + ".md"}
        Rename-Item -Path $TargetFiles[$i].FullName -NewName ($FileParts -join "-")
    }
}