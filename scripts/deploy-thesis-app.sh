pm2 stop all

rm -r my-thesis

# Clone code mới
git clone git@github.com:duymanh3602/my-thesis.git && wait

cd ./my-thesis

git checkout develop && wait

# di chuyển đến client
cd ./server

# cài thư viện
yarn && wait

yarn build && wait

pm2 start dist/main.js

# Server port 8080
echo "Deployed server successful!" 

wait

# di chuyển đến client
cd ../client

# cài thư viện
yarn && wait

#build
yarn build && wait

cp -r ./dist /var/www

rm -r /var/www/html

mv /var/www/dist /var/www/html

echo "Completed!"

