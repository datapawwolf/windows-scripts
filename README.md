# Windows Troubleshooting Scripts

A collection of PowerShell and batch scripts for troubleshooting, automating, and resolving common Windows user and workstation issues.

This repository is primarily focused on practical scripts that can be useful for **System Administrators, IT Support, and Help Desk technicians**.

## Purpose

The goal of this repository is to collect reusable scripts for common IT support tasks instead of repeatedly performing the same troubleshooting steps manually.

The scripts are based around real-world Windows administration and troubleshooting scenarios, including:

* Network troubleshooting
* Windows services
* Printer troubleshooting
* User profile issues
* Active Directory environments
* Windows Update
* System information collection
* Software troubleshooting
* Device and driver troubleshooting
* Remote administration
* General workstation maintenance

## Repository Structure

```text
windows-scripts/
│
├── Network/
│   ├── Restart-NetworkAdapter.ps1
│   ├── Flush-DNS.ps1
│   └── Reset-NetworkStack.ps1
│
├── Printers/
│   ├── Restart-PrintSpooler.ps1
│   └── Clear-PrintQueue.ps1
│
├── Windows/
│   ├── Repair-SystemFiles.ps1
│   └── Reset-WindowsUpdate.ps1
│
├── ActiveDirectory/
│   └── ...
│
├── Utilities/
│   └── ...
│
└── README.md
```

The structure may change as more scripts are added.

## Requirements

Most scripts are intended for:

* Windows 10
* Windows 11
* Windows Server environments
* PowerShell 5.1 or newer

Some scripts require **Administrator privileges**.

Scripts that interact with Active Directory may also require the appropriate Windows Server / RSAT PowerShell modules.

## Usage

Clone the repository:

```powershell
git clone <repository-url>
```

Navigate to the repository:

```powershell
cd windows-scripts
```

Run the required script:

```powershell
.\Network\Restart-NetworkAdapter.ps1
```

If PowerShell prevents script execution, check the current execution policy:

```powershell
Get-ExecutionPolicy
```

For one-time execution without permanently changing the system execution policy:

```powershell
powershell.exe -ExecutionPolicy Bypass -File ".\script.ps1"
```

## Example

Restart a network adapter:

```powershell
Restart-NetAdapter -Name "Ethernet"
```

A script in this repository may automate the process and provide additional checks or error handling.

## Safety

Some scripts modify Windows configuration, services, networking, registry settings, or other system components.

Before running a script:

1. Read the script and understand what it does.
2. Test it in a non-production environment when possible.
3. Verify whether Administrator privileges are required.
4. Make sure you have appropriate backups before making significant system changes.

Use these scripts at your own risk.

## Script Documentation

Where practical, PowerShell scripts should contain a comment-based help section:

```powershell
<#
.SYNOPSIS
Restarts a Windows network adapter.

.DESCRIPTION
Finds the specified network adapter and restarts it.

.PARAMETER Name
Name of the network adapter.

.EXAMPLE
.\Restart-NetworkAdapter.ps1 -Name "Ethernet"

.NOTES
Requires Administrator privileges.
#>
```

This allows documentation to be accessed directly through PowerShell:

```powershell
Get-Help .\Restart-NetworkAdapter.ps1 -Full
```

## Contributing

Suggestions, improvements, bug fixes, and additional troubleshooting scripts are welcome.

When adding a script, try to:

* Use clear and descriptive names.
* Include comments explaining non-obvious operations.
* Add error handling where appropriate.
* Avoid hard-coded usernames, passwords, paths, IP addresses, or domain names.
* Document required privileges and dependencies.
* Test the script before submitting it.

## Disclaimer

These scripts are provided for educational and administrative purposes.

Always review scripts before running them, especially in production environments. The repository owner is not responsible for data loss, configuration changes, downtime, or other issues resulting from their use.

## License

Add the appropriate license for the repository, such as the MIT License.
