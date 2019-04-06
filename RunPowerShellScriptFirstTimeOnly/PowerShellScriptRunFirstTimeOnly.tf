resource "null_resource" "PowerShellScriptRunFirstTimeOnly" {
    provisioner "local-exec" {
        command = ".'${path.module}\\helpers\\Get-Processes.ps1' -First 10"
        interpreter = ["PowerShell", "-Command"]
    }
}