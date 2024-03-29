cd ..

rm -r public
rm -r resources

# Change to new styles
sed -i 's!$primary-color: #ffbc3b;!$primary-color: midnightblue;!g' assets/scss/_variables.scss

# try https://colorhunt.co/palette/f1e290f677c19b3284690074

# $primary-color: #ffbc3b;
# $secondary-color: #1a1a37;
# $text-color: #5c5c77;
# $text-color-light: #8585a4;
# $text-color-dark: #1e1e4b;

# sed -i 's!ffbc3b!F1E290!g' assets/scss/*.scss # primary - light
# sed -i 's!1a1a37!690074!g' assets/scss/*.scss # seconary - dark
# sed -i 's!5c5c77!F677C1!g' assets/scss/*.scss # seconary - dark

# # sed -i 's!#8996a7!$text-color-light!g' assets/scss/templates/*.scss 
# sed -i 's!border-color: #494a43!border-color: $border-color!g' assets/scss/templates/*.scss 
# sed -i 's!background-color: #182b45!background-color: $secondary-color!g' assets/scss/templates/*.scss 
