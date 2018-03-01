wac:
  COLR:
    int1:
      host_insecure: False
      fqdn: "crgtcol-intprj1.axa-fr.intraxa"
      proxy:
        preservehost: False
        proxypass: https://colorcrgt-fo-ina-1.cloud
      options:
        - 'Header set MyHeader "%D %t"'
    int2:
      host_insecure: False
      fqdn: "crgtcol-intprj2.axa-fr.intraxa"
      proxy:
        preservehost: False
        proxypass: https://colorcrgt-fo-ina-2.cloud
      options: False
  ENDT:
    rec:
      host_insecure: True
      fqdn: "endt-recprj.axa-fr.intraxa"
      proxy:
        preservehost: True
        proxypass: https://endt-fo-recprj.coreit
      options: False
