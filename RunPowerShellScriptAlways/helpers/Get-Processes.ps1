param (
    [Parameter(Mandatory = $true)]
    [Int16]
    $First
)

Get-Process | Sort-Object CPU -Descending | Select-Object -First $First