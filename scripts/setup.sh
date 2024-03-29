cd ..

rm -r content
rm -r data
rm -r i18n
rm -r static
rm -r public
rm -r resources
rm -r assets

cp -r themes/educenter/exampleSite/* .
cp themes/educenter/exampleSite/hugo.yaml .

# mv data/en/* data
# mv content/english/* content
rm i18n/fr.yaml
rm -rf data/fr
rm -rf content/french
# rm -rf data/en
# rm -rf content/english

mkdir -p assets/scss
cp -r themes/educenter/assets/scss assets

# Remove French
sed -i '153,208d' hugo.yaml
sed -i 's!disableLanguages: \[]!disableLanguages: [fr]!g' hugo.yaml
sed -i 's!top_header: true!top_header: false!g' hugo.yaml
sed -i '9i defaultContentLanguageInSubdir: false' hugo.yaml
sed -i '9i defaultContentLanguage: en' hugo.yaml


grep -q -F '$background-colour:' assets/scss/_variables.scss
if [ $? -ne 0 ]; then
  sed -i '9i $background-color: #182b45;' assets/scss/_variables.scss
fi

grep -q -F '$table-border-color:' assets/scss/_variables.scss
if [ $? -ne 0 ]; then
  sed -i '10i $table-border-color: #dee2e6;' assets/scss/_variables.scss
fi

grep -q -F '$table-border-color:' assets/scss/_variables.scss
if [ $? -ne 0 ]; then
  sed -i '10i $table-border-color: #dee2e6;' assets/scss/_variables.scss
fi

grep -q -F '$text-color-lighten:' assets/scss/_variables.scss
if [ $? -ne 0 ]; then
  sed -i '7i $text-color-lighten: #d6d6e0;' assets/scss/_variables.scss
fi

grep -q -F '$text-color-muted:' assets/scss/_variables.scss
if [ $? -ne 0 ]; then
  sed -i '8i $text-color-muted: #b5b5b7;' assets/scss/_variables.scss
fi

sed -i 's! border-color: #494a43! border-color: $border-color!g' assets/scss/templates/*.scss
sed -i 's! border-color: #494a43 !border-color: $border-color!g' assets/scss/*.scss 

sed -i 's! background-color: #182b45! background-color: $background-color!g' assets/scss/templates/*.scss
sed -i 's! background-color: #182b45! background-color: $background-color!g' assets/scss/*.scss

sed -i 's!border: 1px solid #dee2e6!border: 1px solid $table-border-color!g' assets/scss/templates/*.scss
sed -i 's!border: 1px solid #dee2e6!border: 1px solid $table-border-color!g' assets/scss/*.scss

sed -i 's!color: #d6d6e0!color: $text-color-lighten!g' assets/scss/templates/*.scss
sed -i 's!color: #d6d6e0!color: $text-color-lighten!g' assets/scss/*.scss

sed -i 's!color: #b5b5b7!color: $text-color-muted!g' assets/scss/templates/*.scss
sed -i 's!color: #b5b5b7!color: $text-color-muted!g' assets/scss/*.scss

sed -i 's!background-color: #FFDC11!background-color: $primary-color!g' assets/scss/templates/*.scss
sed -i 's!background-color: #FFDC11!background-color: $primary-color!g' assets/scss/*.scss

sed -i 's! color: #8996a7! color: $text-color-light!g' assets/scss/templates/*.scss
sed -i 's! color: #8996a7! color: $text-color-light!g' assets/scss/*.scss

sed -i 's!text-color-dark!text-color-header!g' assets/scss/templates/*.scss
sed -i 's!text-color-dark!text-color-header!g' assets/scss/*.scss

# Fix missing semicolon
# sed -i 's!$table-border-color\n!$table-border-color;\n!g' assets/scss/*.scss
