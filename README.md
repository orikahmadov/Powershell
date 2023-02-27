# Install-CumulativeUpdate.ps1
Installs the cumilative update manually by user input

To run the script, follow these steps:

1.Open PowerShell with Administrator privileges. To do this, right-click on the PowerShell icon and select "Run as Administrator".
2.Change the directory to where the script is saved. For example, if you saved the script on your desktop, you can type "cd C:\Users\YourUsername\Desktop" and press Enter.
3.Type the name of the script, including the .ps1 extension. For example, you can type ".\Install-CumulativeUpdate.ps1" and press Enter.
4.Follow the prompts in the script to enter the KB number of the cumulative update.
--------------------------------------------------------------------------------------------------------------------
The "Install-CumulativeUpdate.ps1" script is a PowerShell script designed to automate the process of installing a cumulative update on Windows Server. The script prompts the user to enter the KB number of the cumulative update and then performs the following steps:

    Stops the Windows Update services to prevent any conflicts during the update installation process.
    Renames the SoftwareDistribution folder to fix any corruption issues with the update files.
    Restarts the Windows Update services.
    Checks for any pending updates and installs them.
    Installs the cumulative update using the Install-Package cmdlet.
    Restarts the server to complete the installation.
