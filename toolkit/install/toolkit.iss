; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{9FD61024-BC9A-4226-ADA5-E72254250B6C}
AppName=FHIR Toolkit
AppVersion=0.1
AppVerName=0.0.41 (FHIR Version 3.0.1.12956)
AppPublisher=Health Intersections
AppPublisherURL=http://www.healthintersections.com.au/FhirServer
AppSupportURL=http://www.healthintersections.com.au/FhirServer
AppUpdatesURL=http://www.healthintersections.com.au/FhirServer
DefaultDirName={pf}\FHIRToolkit
DefaultGroupName=FHIR Applications
AllowNoIcons=yes
LicenseFile=C:\work\fhirserver\toolkit\install\licence.txt
OutputDir=C:\work\fhirserver\toolkit\install
OutputBaseFilename=fhir-toolkit-install-0.0.41
SetupIconFile=C:\work\fhirserver\toolkit\AppEndorser_Icon.ico
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\work\fhirserver\toolkit\install\FHIRToolkitR4.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\work\fhirserver\toolkit\install\FHIRToolkitR3.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\work\fhirserver\toolkit\install\osx\FHIRToolkit.app\Contents\MacOS\toolkit.png"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\work\fhirserver\toolkit\install\osx\FHIRToolkit.app\Contents\MacOS\*.xml"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Toolkit (R4)"; Filename: "{app}\FHIRToolkitR4.exe"
Name: "{group}\Toolkit (R3)"; Filename: "{app}\FHIRToolkitR3.exe"
Name: "{group}\{cm:ProgramOnTheWeb,FHIR Toolkit}"; Filename: "http://www.healthintersections.com.au/FhirServer"

[Run]
Filename: "{app}\FHIRToolkitR3.exe"; Description: "{cm:LaunchProgram,FHIR Toolkit (R3)}"; Flags: nowait postinstall skipifsilent

