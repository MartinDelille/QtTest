; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "QtTest"
#define MyAppVersion "1.1.5"
#define MyAppPublisher "Phonations"
#define MyAppURL "http://www.phonations.com/"
#define MyAppExeName "QtTest.exe"

;#define MyAppSrc "release\" + MyAppExeName
;#if !FileExists(MyAppSrc)
;#error "Unable to find MyAppSrc"
;#endif

;#define MyAppVerName MyAppName + " v" + MyAppVersion

;#define MyOutputDir GetEnv('QTTEST_RELEASE_PATH')

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{cf8357ca-044f-4860-a237-915d65261bdd}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
;LicenseFile="LICENSE.TXT"
OutputDir={#MyOutputDir}
OutputBaseFilename={#MyAppName}Setup_v{#MyAppVersion}
;OutputBaseFilename={#MyAppName}Setup.exe
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

;[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]

;Source: "release\QtTest.exe"; DestDir: "{app}"; Flags: ignoreversion
; Qt dlls (windeployqt needs to be run first)
;Source: "release\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\icuin53.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\icuuc53.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\icudt53.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "release\iconengines\*.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
;Source: "release\imageformats\*.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
;Source: "release\platforms\*.dll"; DestDir: "{app}\platforms"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

;[Run]
;Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
