This is a simple framework designed to be extended for use on robots and embedded computers.

As of initial commit, this is a very barebones system. As features are added, more configuration may be required

To get started:
-In etc/systemd/system/robot.service, change TEMPLATE_USER to the name of the user you will run with
-In the directory containing this template, run dpkg-deb --build my-deb-template
-Install with sudo dpkg -i my-deb-template.deb
-Upon installing, the screen session will launch, and it will now automatically launch on boot

Notes:
-To attach to the screen session, type: screen -x robot
-To move between tabs, Ctrl+(left/right)arrow
-The escape key has been remapped to be '\'
