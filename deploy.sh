python3 convertposts.py
python3 createlog.py
git add .
git commit -m "Deploy"
git push
cd ..
cd web
git commit --allow-empty -m "Deploy"
cd ..
cd gemini