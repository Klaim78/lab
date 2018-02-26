{% for project, dict in pillar.get('wac', {}).items() %}
/etc/httpd/conf.d/{{dict.fqdn}}.conf:
  file.managed:
    - source: salt://apache/files/template_apache.conf.jinja
    - template: jinja
    - backup: 'minion'
    - file_backup: {{dict.fqdn}}.conf
    - context:
      project: {{project}}
      dict: {{dict}}

{%endfor%}
