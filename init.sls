nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: nginx
      - file: /etc/nginx/sites-avaliable/default
      - file: /usr/share/nginx/html/custom_404.html
      
/etc/nginx/sites-enabled/default:
  file:
    - managed
    - source: salt://nginx/default
    - user: root
    - group: root
    - mode: 644

/usr/share/nginx/html/custom_404.html:
    - managed
    - source: salt://nginx/custom_404.html
    - user: root
    - group: root
    - mode: 644
