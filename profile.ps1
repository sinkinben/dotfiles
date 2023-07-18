# cat = Get-Content -Encoding UTF8
Remove-Item alias:cat;
function cat ($file) {
    Get-Content -Encoding UTF8 $file
}

# Need to run Install-Module PSColor in PowerShell with Admin.
Import-Module PSColor

# Display git branch name in prompt
function Write-BranchName () {
    try {
        $branch = git rev-parse --abbrev-ref HEAD

        if ($branch -eq "HEAD") {
            # we're probably in detached HEAD state, so print the SHA
            $branch = git rev-parse --short HEAD
            Write-Host " ($branch)" -NoNewline -ForegroundColor "red"
        }
        else {
            # we're on an actual branch, so print it
            Write-Host " ($branch)" -NoNewline -ForegroundColor "blue"
        }
    } catch {
        # we'll end up here if we're in a newly initiated git repo
        Write-Host " (no branches yet)" -NoNewline -ForegroundColor "yellow"
    }
}

function prompt {
    $base = "PS "
    $path = "$($executionContext.SessionState.Path.CurrentLocation)"
    $userPrompt = "$('' * ($nestedPromptLevel + 1)) "

    Write-Host "`n$base" -NoNewline

    if (Test-Path .git) {
        Write-Host $path -NoNewline # -ForegroundColor "green"
        Write-BranchName
    }
    else {
        # we're not in a repo so don't bother displaying branch name/sha
        Write-Host $path -NoNewline # -ForegroundColor "green"
    }

    return $userPrompt
}

# Update PATH variables
# $env:PATH += ";C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.33.31629\bin\HostX64\x64\"
