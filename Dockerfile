FROM nginx:alpine

# Railway injects PORT; nginx's entrypoint substitutes it into the template below.
ENV PORT=80

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html alpha-sso-portal.html usta-daily-board_4.html /usr/share/nginx/html/

EXPOSE 80
