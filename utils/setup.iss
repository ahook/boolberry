; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Boolberry"
;#define MyAppVersion "0.2.0.31"
#define MyAppPublisher "Boolberry Team"
#define MyAppURL "http://boolberry.com"
#define MyAppExeName "qt-boolb.exe"
;#define BinariesPath "C:\jenkins\workdir\builds\bbr-win-x64-v0.2.0.31(5d85ebf)"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{24C4D076-F481-4E53-AC1D-1DF31397E2E2}
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
Root: HKCR; Subkey: ".bbr"; ValueType: string; ValueName: ""; ValueData: "BoolberryWalletDataFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: ".bbr.keys"; ValueType: string; ValueName: ""; ValueData: "BoolberryWalletDataKyesFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "BoolberryWalletDataFile"; ValueType: string; ValueName: ""; ValueData: "Boolberry Wallet's Data File"; Flags: uninsdeletekey
Root: HKCR; Subkey: "BoolberryWalletDataKyesFile"; ValueType: string; ValueName: ""; ValueData: "Boolberry Wallet's Keys File"; Flags: uninsdeletekey

Root: HKCR; Subkey: "BoolberryWalletDataFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\qt-boolb.exe,0"
Root: HKCR; Subkey: "BoolberryWalletDataKyesFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\qt-boolb.exe,0"


[Files]
Source: "{#BinariesPath}\boolbd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\d3dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Enginio.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\icudt52.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\icuin52.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\icuuc52.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\libGLESv2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\msvcp120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\msvcr120.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Bluetooth.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5CLucene.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Concurrent.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Declarative.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Designer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5DesignerComponentsd.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Help.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Multimedia.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5MultimediaQuick_p.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5MultimediaWidgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Nfc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5OpenGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Positioning.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5PrintSupport.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Qml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Quick.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5QuickParticles.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5QuickTest.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5QuickWidgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Script.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5ScriptTools.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Sensors.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5SerialPort.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Sql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Test.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5WebKit.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5WebKitWidgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5WebSockets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5WinExtras.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5Xml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\Qt5XmlPatterns.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\qt-boolb.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\simpleminer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\simplewallet.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BinariesPath}\platforms\qminimal.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#BinariesPath}\platforms\qoffscreen.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "{#BinariesPath}\platforms\qwindows.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
Source: "..\src\gui\qt-daemon\html\*"; DestDir: "{app}\html"; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

