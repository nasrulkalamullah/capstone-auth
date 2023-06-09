# Menggunakan node.js sebagai base image
FROM node:14

# Membuat direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstal dependensi aplikasi
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menjalankan perintah untuk memulai aplikasi
CMD ["node", "index.js"]