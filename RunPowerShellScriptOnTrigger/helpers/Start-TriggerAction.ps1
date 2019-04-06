param (
    [Parameter(Mandatory = $true)]
    [String]
    $TriggerValue
)

Write-Output "Trigger value changed to $TriggerValue"