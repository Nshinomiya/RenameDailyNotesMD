# import functions
.\MonthName2Month.ps1

# main
$TargetFilepaths = Get-ChildItem $args[0] | Select-Object Name | Where-Object {$_.Name -like "*.md"}
foreach($TargetFilepath in $TargetFilepaths)
{
    foreach($part in $TargetFilepath.Name -split " ")
    {
        $result = MonthName2Month $part
        return $result
    }
}