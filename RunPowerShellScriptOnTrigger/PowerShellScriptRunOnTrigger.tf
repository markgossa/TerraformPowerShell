resource "null_resource" "PowerShellScriptRunOnTrigger" {
    triggers {
        trigger = "${var.TriggerValue}"
    }

    provisioner "local-exec" {
        command = ".'${path.module}\\helpers\\Start-TriggerAction.ps1' -TriggerValue ${var.TriggerValue}"
        interpreter = ["PowerShell", "-Command"]
    }
}