base:
  '*':
    - example
  'roles:web-server':
    - match: grain
    - iis-web
  'os:windows':
    - match: grain
    - windows-base