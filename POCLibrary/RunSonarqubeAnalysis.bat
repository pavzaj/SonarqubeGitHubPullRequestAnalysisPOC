@echo off
packages\MSBuild.SonarQube.Runner.Tool.1.0.0\tools\SonarQube.Scanner.MSBuild.exe end /d:"sonar.login=%sonarqube_auth_token%" /d:"sonar.verbose=true"