FROM nodered/node-red:latest

# نسخ ملفات المشروع إلى المجلد الداخلي لـ Node-RED
COPY package.json /data/package.json
COPY flows.json /data/flows.json

# تثبيت المكتبات المسجلة في package.json
RUN cd /data && npm install
