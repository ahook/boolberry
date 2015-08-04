; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Luidor"
;#define MyAppVersion "0.2.0.31"
#define MyAppPublisher "Lui Team"
#define MyAppURL "http://lui.com"
#define MyAppExeName "qt-lui.exe"
;#define BinariesPath "C:\jenkins\workdir\builds\lui-win-x64-v0.2.0.31(5d85ebf)"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{24C46096-F481-4E53-AC1D-1DF31397E2E2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=../resources/bg.bmp
WizardSmallImageFile=../resources/icon.bmp
;SetupIconFile=../resources/app.ico


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Registry]
Root: HKCR; Subkey: ".lui"; ValueType: string; ValueName: ""; ValueData: "LuiWalletDataFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "LuiWalletDataFile"; ValueType: string; ValueName: ""; ValueData: "Lui Wallet's Data File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "LuiWalletDataKyesFile"; ValueType: string; ValueName: ""; ValueData: "Lui Wallet's Keys File"; Flags: uninsdeletekey

Root: HKCR; Subkey: "LuiWalletDataFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\qt-lui.exe,0"
Root: HKCR; Subkey: "LuiWalletDataKyesFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\qt-lui.exe,0"


[Files]

Source: "{#BinariesPath}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: "..\src\gui\qt-daemon\html\*"; DestDir: "{app}\html"; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

