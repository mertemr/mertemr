oh-my-posh init pwsh `
    --config $env:USERPROFILE\.config\ohmyposh\theme.json | Invoke-Expression

Import-Module posh-git
Import-Module gsudoModule
Import-Module scoop-completion

Invoke-Expression (&scoop-search --hook)

$profile_path = Split-Path -Path $PROFILE

Invoke-Expression "gh" -ErrorAction Ignore -OutVariable gh_installed | Out-Null
if ($gh_installed) {
    ". $profile_path\gh_completion.ps1" | Invoke-Expression -ErrorAction SilentlyContinue
}
Remove-Variable gh_installed

function Remove-PSAliases {
    $fileContents = Get-Content -Path "$profile_path\linux_commands.txt"

    for ($i = 0; $i -lt $fileContents.Count; $i++) {
        $linxcmd = $fileContents[$i]
        If (Test-Path Alias:$linxcmd) {
            Remove-Item Alias:$linxcmd -Force | Out-Null;
            Remove-Item Alias:$linxcmd -Force | Out-Null;
            New-Alias -Name $linxcmd -Value "$linxcmd.exe" -Scope Global
        }
    }
}; Remove-PSAliases
Remove-Item Function:Remove-PSAliases -Force | Out-Null

function pyenv {
    "virtualenv.exe --prompt=`"`" venv" | Invoke-Expression -ErrorAction Stop
}

function ytdlp_mp3 {
    $dlp_args = @(
        "--ignore-errors",
        "-f bestaudio",
        "--extract-audio",
        "-w",
        "--no-warnings",
        "-i",
        "--audio-format mp3",
        "--audio-quality 0",
        "-o '%(title)s.%(ext)s'",
        "--progress",
        "--sponsorblock-remove all",
        "--yes-playlist"
    )
    Invoke-Expression "yt-dlp.exe $dlp_args $args"
}

function mkcdir ([string] $path) {
    $path = $path.Trim()
    if ($path -eq "") {
        Write-Host "Path cannot be empty."
        return;
    }

    $absolute_path = (Get-Item $path).FullName
    if (Test-Path $absolute_path) {
        Write-Host "Path $absolute_path already exists."
        return;
    }

    Write-Host "Creating $path"
    New-Item -ItemType Directory -Path $absolute_path | Out-Null
    Set-Location $absolute_path
}

function winupg {
    $apps = @(
        $args.Split(' ') | ForEach-Object { $_.Trim() }
    ) | Where-Object { $_ -ne '' }

    ForEach ($app in $apps) {
        Invoke-Expression "winget upgrade $app"
    }
}

function DockerComposeRebuild ([string] $container) {
    $dc = "docker-compose.exe"
    $container = $container.Trim()
    if ($container -eq "") {
        "$dc down; $dc up --build -d" | Invoke-Expression -ErrorAction Ignore
    }
    else {
        "$dc build $container; $dc up -d --no-deps $container" | Invoke-Expression
    }
    $dangling = @(
        docker images -f "dangling=true" -q
    ) | ForEach-Object { $_.Trim() }
    
    if ($dangling.Count -gt 0) {
        "docker rmi $dangling" | Invoke-Expression
    }
}

function rmf {
    $path = $args[0]
    if (-not (Test-Path $path)) {
        Write-Host "Path $path does not exist."
        return;
    }
    
    $absolute_path = (Get-Item $path).FullName
    
    Write-Host "Removing $absolute_path"
    "rm.exe -rfv $path" | Invoke-Expression
}

$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
$env:PYENV_VIRTUALENV_DISABLE_PROMPT = 1

Set-Alias npp "${Env:ProgramFiles}\Notepad++\notepad++.exe"

Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)
    [Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
    $Local:word = $wordToComplete.Replace('"', '""')
    $Local:ast = $commandAst.ToString().Replace('"', '""')
    winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}

Remove-Variable profile_path