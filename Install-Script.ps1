Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force
$CurrentDirectory = (Get-Location).Path

if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
    Invoke-WebRequest -Uri https://aka.ms/getwinget -OutFile Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
    Invoke-WebRequest -Uri https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx -OutFile Microsoft.UI.Xaml.2.7.x64.appx
    Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
    Add-AppxPackage Microsoft.UI.Xaml.2.7.x64.appx
    Add-AppxPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Remove-Item .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Remove-Item .\Microsoft.VCLibs.x64.14.00.Desktop.appx
    Remove-Item .\Microsoft.UI.Xaml.2.7.x64.appx
}

if (!(Get-Command pwsh -ErrorAction SilentlyContinue)) {
    winget install --id Microsoft.PowerShell -e --accept-package-agreements --accept-source-agreements --silent
}

if (!(Get-Command wt -ErrorAction SilentlyContinue)) {
    winget install --id Microsoft.WindowsTerminal -e --accept-package-agreements --accept-source-agreements --silent
    if (!$?){
        winget install --id 9N0DX20HK701 --source msstore -e --accept-package-agreements --accept-source-agreements --silent
    }
}

if (!(Test-Path "$($CurrentDirectory)\winget-export.json")) {
	'{
		"$schema" : "https://aka.ms/winget-packages.schema.2.0.json",
		"CreationDate" : "2023-10-25T13:51:45.103-00:00",
		"Sources" : 
		[
			{
				"Packages" : 
				[
					{
						"PackageIdentifier" : "ModernFlyouts.ModernFlyouts"
					},
					{
						"PackageIdentifier" : "7zip.7zip"
					},
					{
						"PackageIdentifier" : "ShareX.ShareX"
					},
					{
						"PackageIdentifier" : "Audacity.Audacity"
					},
					{
						"PackageIdentifier" : "Canonical.Ubuntu.2204"
					},
					{
						"PackageIdentifier" : "Discord.Discord"
					},
					{
						"PackageIdentifier" : "voidtools.Everything"
					},
					{
						"PackageIdentifier" : "GIMP.GIMP"
					},
					{
						"PackageIdentifier" : "Git.Git"
					},
					{
						"PackageIdentifier" : "CodecGuide.K-LiteCodecPack.Standard"
					},
					{
						"PackageIdentifier" : "DominikReichl.KeePass"
					},
					{
						"PackageIdentifier" : "Microsoft.DevHome"
					},
					{
						"PackageIdentifier" : "Microsoft.WindowsTerminal"
					},
					{
						"PackageIdentifier" : "Mozilla.Firefox"
					},
					{
						"PackageIdentifier" : "JanDeDobbeleer.OhMyPosh"
					},
					{
						"PackageIdentifier" : "PrismLauncher.PrismLauncher"
					},
					{
						"PackageIdentifier" : "RiotGames.LeagueOfLegends.EUNE"
					},
					{
						"PackageIdentifier" : "StartIsBack.StartAllBack"
					},
					{
						"PackageIdentifier" : "Valve.Steam"
					},
					{
						"PackageIdentifier" : "JetBrains.Toolbox"
					},
					{
						"PackageIdentifier" : "WinMerge.WinMerge"
					},
					{
						"PackageIdentifier" : "AntibodySoftware.WizTree"
					},
					{
						"PackageIdentifier" : "Peppy.Osu!"
					},
					{
						"PackageIdentifier" : "qBittorrent.qBittorrent"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2013.x64"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.DesktopRuntime.6"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.DesktopRuntime.3_1"
					},
					{
						"PackageIdentifier" : "Microsoft.PowerShell"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.DesktopRuntime.5"
					},
					{
						"PackageIdentifier" : "Microsoft.VisualStudioCode.Insiders"
					},
					{
						"PackageIdentifier" : "Peppy.Osu!"
					},
					{
						"PackageIdentifier" : "voidtools.Everything"
					},
					{
						"PackageIdentifier" : "clsid2.mpc-hc"
					},
					{
						"PackageIdentifier" : "Python.Launcher"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2012.x86"
					},
					{
						"PackageIdentifier" : "Mojang.MinecraftLauncher"
					},
					{
						"PackageIdentifier" : "CodeSector.TeraCopy"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2015+.x86"
					},
					{
						"PackageIdentifier" : "Microsoft.WindowsSDK.10.0.19041"
					},
					{
						"PackageIdentifier" : "Microsoft.CLRTypesSQLServer.2019"
					},
					{
						"PackageIdentifier" : "AnyDeskSoftwareGmbH.AnyDesk"
					},
					{
						"PackageIdentifier" : "AdoptOpenJDK.OpenJDK.16"
					},
					{
						"PackageIdentifier" : "EclipseAdoptium.Temurin.8.JRE"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2015+.x64"
					},
					{
						"PackageIdentifier" : "EclipseAdoptium.Temurin.18.JRE"
					},
					{
						"PackageIdentifier" : "VideoLAN.VLC"
					},
					{
						"PackageIdentifier" : "Nvidia.GeForceExperience"
					},
					{
						"PackageIdentifier" : "EpicGames.EpicGamesLauncher"
					},
					{
						"PackageIdentifier" : "Microsoft.XNARedist"
					},
					{
						"PackageIdentifier" : "Microsoft.PowerToys"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2012.x64"
					},
					{
						"PackageIdentifier" : "Python.Python.3.12"
					},
					{
						"PackageIdentifier" : "Microsoft.WindowsSDK.10.0.22000"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.DesktopRuntime.7"
					},
					{
						"PackageIdentifier" : "Python.Python.3.10"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.SDK.6"
					},
					{
						"PackageIdentifier" : "Microsoft.VCRedist.2013.x86"
					},
					{
						"PackageIdentifier" : "Microsoft.DotNet.DesktopRuntime.6"
					},
					{
						"PackageIdentifier" : "Python.Python.3.11"
					}
				],
				"SourceDetails" : 
				{
					"Argument" : "https://cdn.winget.microsoft.com/cache",
					"Identifier" : "Microsoft.Winget.Source_8wekyb3d8bbwe",
					"Name" : "winget",
					"Type" : "Microsoft.PreIndexed.Package"
				}
			}
		],
		"WinGetVersion" : "1.7.2782-preview"
	}' | Out-File -Encoding utf8 -FilePath "$($CurrentDirectory)\winget-export.json"
}

wt pwsh -NoExit -Command "winget import -i '$($CurrentDirectory)\winget-export.json' --accept-package-agreements --accept-source-agreements; winget upgrade --all --silent --accept-package-agreements --accept-source-agreements; Install-Module PSWindowsUpdate && Get-WindowsUpdate && Install-WindowsUpdate"