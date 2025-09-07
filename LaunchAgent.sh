#!/bin/bash
# safe_ex2_launchagent.sh
cat <<EOF > ~/Library/LaunchAgents/com.example.safe.plist
<?xml version="1.0"?>
<plist version="1.0">
<dict>
    <key>Label</key><string>com.example.safe</string>
    <key>ProgramArguments</key><array><string>safe_bash</string><string>-c</string><string>echo 'Simulation LaunchAgent'</string></array>
    <key>RunAtLoad</key><true/>
</dict>
</plist>
EOF

safe_launchctl load ~/Library/LaunchAgents/com.example.safe.plist
