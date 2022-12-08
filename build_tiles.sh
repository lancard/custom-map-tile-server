git submodule update --remote
cd korea-openstreetmap-tiles
rm -rf 0 1 2 3 4 5 6 7 8 9 10 11 12 13
cd ..
npm i graceful-fs
node index.js
cd korea-openstreetmap-tiles
git add .
git commit -m "update tiles"
git push origin HEAD:main
cd ..
