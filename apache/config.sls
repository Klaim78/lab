{% for projects, dict in pillar.get('wac', {}).items() %}
{% for conf, dict in dict.items() %}
/etc/httpd/conf.d/{{dict.fqdn}}.conf:
  file.managed:
    - source: salt://apache/files/template_apache.conf.jinja
    - template: jinja
    - backup: 'minion'
    - file_backup: {{dict.fqdn}}.conf
    - context:
      conf: {{conf}}
      projects: {{projects}}
      dict: {{dict}}
{%endfor%}
{%endfor%}
