Write-Host "Installing Java..."
Invoke-WebRequest -Uri "https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.exe" -OutFile "C:\\jdk17.exe"
Start-Process -FilePath "C:\\jdk17.exe" -ArgumentList "/s" -Wait

Write-Host "Installing Maven..."
Invoke-WebRequest -Uri "https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip" -OutFile "C:\\maven.zip"
Expand-Archive -Path "C:\\maven.zip" -DestinationPath "C:\\"

[Environment]::SetEnvironmentVariable("JAVA_HOME", "C:\\Program Files\\Java\\jdk-17", "Machine")
[Environment]::SetEnvironmentVariable("MAVEN_HOME", "C:\\apache-maven-3.9.6", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\\apache-maven-3.9.6\\bin", "Machine")
