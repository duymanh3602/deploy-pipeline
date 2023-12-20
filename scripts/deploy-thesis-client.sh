# Xóa thư mục clone cũ
rm -r my-thesis

# Clone code mới
git clone git@github.com:duymanh3602/my-thesis.git

wait
# di chuyển đến client
cd ./my-cd m/client

# cài thư viện
yarn

wait

# 
cp -r ./dist /var/www

cd /var/www

rm -r ./html

mv ./dist /html