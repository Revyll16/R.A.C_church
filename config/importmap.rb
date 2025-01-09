# Pin npm packages by running ./bin/importmap

# Pin your application file
pin "application"

# Bootstrap and Popper.js
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true

# Rails UJS (optional, but recommended for Rails-specific behaviors)
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.5/lib/assets/compiled/rails-ujs.js"
