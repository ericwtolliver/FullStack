for file in $(git diff HEAD --name-only | grep -E '\-Day\-LessonPlan\.md$' | xargs dirname);
do
  ./node_modules/.bin/tt-generator $file;
done
