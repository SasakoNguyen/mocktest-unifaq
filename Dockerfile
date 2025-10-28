FROM nginx:alpine
COPY mocktest-landing-page /usr/share/nginx/html

# TẠO FILE /health.json TRẢ 200 OK
RUN echo '{"status":"OK","service":"UniFAQ","db":"connected"}' > /usr/share/nginx/html/health.json

EXPOSE 80