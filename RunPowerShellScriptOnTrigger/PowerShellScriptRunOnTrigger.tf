resource "null_resource" "PowerShellScriptRunOnTrigger" {
    triggers {
        trigger = "${var.TriggerValue}"
    }

    provisioner "local-exec" {
        command = ".'${path.module}\\helpers\\Get-Processes.ps1' -First 10"
        interpreter = ["PowerShell", "-Command"]
    }
}