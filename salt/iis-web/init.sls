ISWebserverRole:
  win_servermanager.installed:
    - force: True
    - recurse: True
    - name: Web-Server