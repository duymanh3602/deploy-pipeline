# Xóa thư mục clone cũ
rm -r my-thesis

# Clone code mới
git clone git@github.com:duymanh3602/my-thesis.git && wait

# di chuyển đến client
cd ./my-thesis/client

# cài thư viện
yarn && wait

#build
yarn build && wait

cp -r ./dist /var/www

rm -r /var/www/html

mv /var/www/dist /var/www/html
