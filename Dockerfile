FROM nginx:alpine

COPY html/index.html /usr/share/nginx/html/index.html
COPY html/style.css /usr/share/nginx/html/style.css

ARG NAMA="Ahmad Faiz Zakaria"
ARG NIM="251572010004"
ARG PRODI="Sistem Informasi"
ARG KAMPUS="STMIK Tazkia"
ARG MINAT="Data Science dan Data Engineering"
ARG ALASAN="Lulusan pesantren yang penasaran dengan dunia IT — ingin mempelajari hal yang belum pernah diajarkan di sana, apalagi di era gempuran AI yang makin tak terbendung."
ARG CITA="Membangun bisnis dengan IT sebagai fondasi utamanya, bekerja secara remote, dan menjadikan ilmu teknologi sebagai sumber penghidupan yang bermakna."

RUN sed -i "s|NAMA_PLACEHOLDER|${NAMA}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|NIM_PLACEHOLDER|${NIM}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|PRODI_PLACEHOLDER|${PRODI}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|KAMPUS_PLACEHOLDER|${KAMPUS}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|MINAT_PLACEHOLDER|${MINAT}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ALASAN_PLACEHOLDER|${ALASAN}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|CITA_PLACEHOLDER|${CITA}|g" /usr/share/nginx/html/index.html

EXPOSE 80
