ls | where {$_.Length -lt 100k} | Remove-Item