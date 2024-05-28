python3 convertposts.py
python3 createlog.py
git add .
git commit -m "Deploy"
git push
cd ..
cd web
git add .
git commit --allow-empty -m "Deploy"
git push
cd ..
cd gemini