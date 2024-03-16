echo "c1">file1.txt
git add .
git commit -m "c1"

git branch arik/bugfix1

git checkout arik/bugfix1

echo "c10">file10.txt
git add .
git commit -m "c10"

echo "c11">file11.txt
git add .
git commit -m "c11"

git checkout main

echo "c2">file2.txt
git add .
git commit -m "c2"

git branch john/feature1

git checkout john/feature1

echo "c3">file3.txt
git add .
git commit -m "c3"

git checkout main

git merge arik/bugfix1 -m "Merge branch 'arik/bugfix1' into main" --no-ff
git tag v1.0.2

git checkout john/feature1

git branch john/feature1-test

git checkout john/feature1-test

echo "c5">file5.txt
git add .
git commit -m "c5"

git checkout main

echo "c6">file6.txt
git add .
git commit -m "c6"

git checkout john/feature1

echo "c7">file7.txt
git add .
git commit -m "c7"

git checkout main

git merge john/feature1 -m "Merge branch 'john/feature1' into main" --no-ff
git tag v1.0.3

git checkout john/feature1-test

echo "c8">file8.txt
git add .
git commit -m "c8"
git tag john-only

git checkout main

echo "c9">file9.txt
git add .
git commit -m "c9"
