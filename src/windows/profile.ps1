# 空cdでホームに
Remove-Item Alias:cd -Force
function cd() {
    if ($args.Length -gt 0) {
        Set-Location $args[0]
    } else {
        Set-Location $HOME
    }
}

# 基本的にUTF-8しか使わない
Remove-Item Alias:cat -Force
function cat() {Get-Content -Encoding UTF8 $args}

# エイリアス
function ..() {Set-Location ../}
function ll() {Get-ChildItem}
function touch() {New-Item $args | Out-Null}

# よさみなの
function el() {explorer .}
function pwdc() {Set-Clipboard "$pwd"}

# 冗長な出力をオフに
function mkdir() {mkdir $args | Out-Null}

# プロンプトのカスタマイズ
function prompt {
    Write-Host "$([char]27)[1m$env:USERNAME@$env:COMPUTERNAME" -ForegroundColor "Green" -NoNewline
    Write-Host ":" -ForegroundColor "White" -NoNewline
    Write-Host $pwd.ToString().Replace($env:HOMEDRIVE + $env:HOMEPATH, "~") -ForegroundColor "Blue" -NoNewline
    Write-Host "$" -ForegroundColor "White" -NoNewline
    return " "
}
