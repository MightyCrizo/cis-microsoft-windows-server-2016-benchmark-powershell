#Domain Firewall Profile
Set-NetFirewallProfile -Profile Domain -Enabled True -DefaultInboundAction Block -DefaultOutboundAction Allow -NotifyOnListen False -AllowLocalFirewallRules True -AllowLocalIPsecRules True -LogFileName %SYSTEMROOT%\System32\logfiles\firewall\domainfw.log -LogMaxSizeKilobytes 16384 -LogBlocked True -LogAllowed True

#Private Firewall Profile
Set-NetFirewallProfile -Profile Private -Enabled True -DefaultInboundAction Block -DefaultOutboundAction Allow -NotifyOnListen False -AllowLocalFirewallRules True -AllowLocalIPsecRules True -LogFileName %SYSTEMROOT%\System32\logfiles\firewall\privatefw.log -LogMaxSizeKilobytes 16384 -LogBlocked True -LogAllowed True

#Public Firewall Profile
Set-NetFirewallProfile -Profile Public -Enabled True -DefaultInboundAction Block -DefaultOutboundAction Allow -NotifyOnListen True -AllowLocalFirewallRules False -AllowLocalIPsecRules False -LogFileName %SYSTEMROOT%\System32\logfiles\firewall\publicfw.log -LogMaxSizeKilobytes 16384 -LogBlocked True -LogAllowed True