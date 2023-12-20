pm2 stop all

rm -r my-thesis

# Clone code mới
git clone git@github.com:duymanh3602/my-thesis.git && wait

# di chuyển đến client
cd ./my-thesis/server

# cài thư viện
yarn && wait

yarn build && wait

pm2 start dist/main.js

