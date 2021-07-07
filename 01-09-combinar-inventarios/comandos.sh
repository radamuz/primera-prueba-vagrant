ansible -i inventarios/ all --list-hosts

ansible -i inventarios/ barcelona --list-hosts

ansible -i inventarios/ lista --list-hosts

ansible -i inventarios/ windows -m win_ping
