server {

	server_name eri.achernar155.com;

	root /var/www/eri.achernar155.com/public_html;

	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}

    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/eri.achernar155.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/eri.achernar155.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = eri.achernar155.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


	listen 80;
	listen [::]:80;

	server_name eri.achernar155.com;
    return 404; # managed by Certbot


}