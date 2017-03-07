echo Sonarqube analysis for: %APPVEYOR_REPO_COMMIT%

IF DEFINED APPVEYOR_PULL_REQUEST_NUMBER (
	echo Analysing Pull Request %APPVEYOR_PULL_REQUEST_NUMBER%
	echo packages\MSBuild.SonarQube.Runner.Tool.1.0.0\tools\SonarQube.Scanner.MSBuild.exe begin /k:"SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.host.url=https://sonarqube.com" /v:"%APPVEYOR_REPO_COMMIT%" /d:"sonar.cs.opencover.reportsPaths=OpencoverTestCoverageReport.xml" /d:sonar.cs.nunit.reportsPaths=nunit2TestResult.xml" /d:"sonar.login=" /d:"sonar.analysis.mode=preview" /d:"sonar.github.oauth=" /d:"sonar.github.pullRequest=%APPVEYOR_PULL_REQUEST_NUMBER%" /d:"sonar.links.scm_dev=https://github.com/pavzaj/SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.verbose=true"
	@echo off
	packages\MSBuild.SonarQube.Runner.Tool.1.0.0\tools\SonarQube.Scanner.MSBuild.exe begin /k:"SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.host.url=https://sonarqube.com" /v:"%APPVEYOR_REPO_COMMIT%" /d:"sonar.cs.opencover.reportsPaths=OpencoverTestCoverageReport.xml" /d:sonar.cs.nunit.reportsPaths=nunit2TestResult.xml" /d:"sonar.login=%sonarqube_auth_token%" /d:"sonar.analysis.mode=preview" /d:"sonar.github.oauth=%github_oauth_token%" /d:"sonar.github.pullRequest=%APPVEYOR_PULL_REQUEST_NUMBER%" /d:"sonar.links.scm_dev=https://github.com/pavzaj/SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.verbose=true" /d:sonar.issuesReport.console.enable=true 
) ELSE (
	@echo off
	packages\MSBuild.SonarQube.Runner.Tool.1.0.0\tools\SonarQube.Scanner.MSBuild.exe begin /k:"SonarqubeGitHubPullRequestAnalysisPOC" /d:"sonar.host.url=https://sonarqube.com" /v:"%APPVEYOR_REPO_COMMIT%" /d:"sonar.cs.opencover.reportsPaths=OpencoverTestCoverageReport.xml" /d:sonar.cs.nunit.reportsPaths=nunit2TestResult.xml" /d:"sonar.login=%sonarqube_auth_token%"
)