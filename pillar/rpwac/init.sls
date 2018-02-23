wac:
  project1:
    host_insecure: True
    fqdn: "fo01.lab.klaim"
    proxy:
      preservehost: On
      proxypass: http://fo01.lab.jenny
    options:
      - 'opt1'
      - 'opt2'
  project2:
    host_insecure: True
    fqdn: "fo02.lab.klaim"
    proxy:
      preservehost: False
      proxypass: http://fo02.lab.jenny
    options:
      - 'opt1'
      - 'opt2'
