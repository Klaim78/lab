httpd:
  pkg.installed: []

httpd.service:
  service.running:
    - require:
      - pkg: httpd
