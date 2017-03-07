echo Sonarqube analysis for: %APPVEYOR_REPO_COMMIT%
echo prnumber %APPVEYOR_PULL_REQUEST_NUMBER%
@echo off
packages\MSBuild.SonarQube.Runner.Tool.1.0.0\tools\SonarQube.Scanner.MSBuild.exe begin /k:"SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.host.url=https://sonarqube.com" /v:"%APPVEYOR_REPO_COMMIT%" /d:"sonar.cs.opencover.reportsPaths=OpencoverTestCoverageReport.xml" /d:sonar.cs.nunit.reportsPaths=nunit2TestResult.xml" /d:"sonar.login=%sonarqube_auth_token%"