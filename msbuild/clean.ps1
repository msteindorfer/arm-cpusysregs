﻿# Cleanup all generated files

[CmdletBinding(SupportsShouldProcess=$true)]
param([switch]$NoPause = $false)

Get-ChildItem $PSScriptRoot -Recurse -Include @("x64", "ARM64", ".vs", "*.vcxproj.user") -Force | Remove-Item -Recurse -Force -Verbose

if (-not $NoPause) {
    pause
}
