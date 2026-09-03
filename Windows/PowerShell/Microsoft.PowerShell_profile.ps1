# ---------------- UTF‑8 全局配置 ----------------
# 控制台I/O编码，解决外部程序(git/python)中文乱码
[Console]::InputEncoding  = [System.Text.Encoding]::UTF8
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# PowerShell向外部程序发送数据的编码
$OutputEncoding = [System.Text.Encoding]::UTF8

# 设置Windows控制台代码页为UTF‑8
chcp 65001 > $null

# === 文件写入默认编码 ===
# PowerShell7(pwsh): utf8 = utf8NoBOM（无BOM，推荐）
# PS5.1注意：PS5.1没有utf8NoBOM，utf8会生成带BOM的UTF‑8
$PSDefaultParameterValues['Out‑File:Encoding'] = 'utf8'
$PSDefaultParameterValues['Set‑Content:Encoding'] = 'utf8'
