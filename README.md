# dotfiles

## Memo

* Windowsでリポジトリをcloneする前に、gitの改行コード自動変換の設定を無効にしておく
* cloneしたら、`~/.gitconfig`は削除しておく

## Installation (Windows)

### 1. PowerShellスクリプトの実行を許可する

管理者権限のPowerShellを上げて、以下を実行

```
# Set-ExecutionPolicy Bypass
```

### 2. 一般ユーザーにシンボリックリンクの作成権限を与える

`gpedit.msc`から、一般ユーザーにシンボリックリンクの作成権限を与える
