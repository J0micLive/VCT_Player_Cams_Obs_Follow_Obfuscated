===========================================
VCT Player Cams OBS Follow - User Guide

🎮 WHAT IS THIS?

This tool lets you press number keys (1–0) to control player camera PIPs during a broadcast.

Keypresses are sent as custom variable updates
to Companion, enabling real-time player POV switching.


🛠 WHAT YOU NEED

Windows PC

Bitfocus Companion running

Companion's Generic UDP Listener instance enabled on port 16760

Python 3.13 or later installed

Required Python packages:

'pip install keyboard pystray pillow watchdog'


📁 WHAT'S IN THIS FOLDER

player_cams_follow.pyw → The main tool (read-only recommended)

config.json            → Editable key bindings (1–0)

settings.json          → Companion IP and port config

setup_python.bat       → One-click environment setup script (Python packages auto-install)

README.txt             → This file


🚀 FIRST TIME SETUP

Install Python (if not already installed):

Download from: https://www.python.org/downloads/

During install, check:

✅ "Add Python to PATH"

✅ "Install for all users"

Run the Setup Script:

Right-click setup_python.bat → Run as administrator

This installs the required Python packages

Edit settings.json:

Set your Companion PC's IP and UDP port

{
  "companion_host": "127.0.0.1",
  "companion_port": 16760
}

Edit config.json for applying non-default keybinds (if needed):

{
  "1": 1,
  "2": 2,
  "3": 3,
  "0": 10
}


Run the Tool:

Double-click player_cams_follow.pyw

Tray icon appears — tool is running in the background

Press 1–0 to update the $(custom:keypress) variable in Companion


🖱️ SYSTEM TRAY TOOLS

Right-click the tray icon to access live controls:

Input: Enabled / Paused  → Toggle live input on/off

Last Sent: X             → Shows the last value sent to Companion

Quit                     → Exits the application


🔁 DYNAMIC TEAM SIDE SWITCHING

To support team side swaps during broadcast (e.g. halftime in Valorant), a custom variable team_side is used:

team_side = A → Team A on keys 1–5, Team B on 6–0

team_side = B → Team B on keys 1–5, Team A on 6–0

Add a toggle button in Companion to switch team_side between 1 and 2.

In Companion, set up triggers that check the value of team_side before cutting to player inputs. This ensures that keybinds dynamically match the correct team alignment.


🛑 TO CLOSE THE TOOL

Right-click the tray icon

Click Quit


🧠 TIPS

Add a custom variable label in Companion showing $(custom:keypress)

Use Companion Triggers → "When variable changes" to automate player camera actions

To run this tool at startup:
→ Create a shortcut to player_cams_follow.pyw and place it in:
shell:startup


📞 NEED HELP?

Reach out to Dylan Kelly on the DUB RBC Engineering Team.

