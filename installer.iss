; Script Inno Setup pour AADL GEST IMMO
; Génère un installateur Windows professionnel

#define MyAppName "AADL GEST IMMO - Gestion des Ascenseurs"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "SPA AADL GEST IMMO ANNABA"
#define MyAppURL "http://www.aadl.com.dz"
#define MyAppExeName "AADL_Gest_Immo_Elevator.exe"

[Setup]
AppId={{AADL-GEST-IMMO-2026-ASCENSEURS}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={{autopf}}\AADL_GEST_IMMO
DisableProgramGroupPage=yes
LicenseFile=LICENSE.txt
OutputDir=installer
OutputBaseFilename=AADL_Gest_Immo_Setup_v1.0.0
SetupIconFile=assets\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{{app}}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{{app}}"; Flags: ignoreversion
Source: "LICENSE.txt"; DestDir: "{{app}}"; Flags: ignoreversion
Source: "assets\icon.ico"; DestDir: "{{app}}"; Flags: ignoreversion

[Icons]
Name: "{{autoprograms}}\{#MyAppName}"; Filename: "{{app}}\{#MyAppExeName}"
Name: "{{autodesktop}}\{#MyAppName}"; Filename: "{{app}}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{{app}}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
