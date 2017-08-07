# README

These steps are necessary to the application up and running.

* Ruby version
    * \>= 2.3.4
* Rails version
    * \>= 5.1 
    * gem pristine --all
    
* System dependencies
  * Yarn
  * NPM
  * [ImageMagick](http://www.imagemagick.org/script/index.php) with `sudo apt-get install imagemagick -y`
  

Simple API REST
```
  Brands:
    * Get all: 
      GET http://localhost:3000/api/brands
  Shoes:
    * Get all:
      GET http://localhost:3000/api/shoes
    * Create:
      POST http://localhost:3000/api/shoes
      params:
        shoe[model]
        shoe[brand_id]
        shoe[isbn]
        shoe[release_year]
        shoe[sku]
        shoe[photo] (file format)
    * Show:
      GET http://localhost:3000/api/shoes/:id
    * Update:
      PUT http://localhost:3000/api/shoes/:id
      params:
        shoe[model]
        shoe[brand_id]
        shoe[isbn]
        shoe[release_year]
        shoe[sku]
        shoe[photo] (file format)
    * Delete:
      DETELE http://localhost:3000/api/shoes/:id
    """
```

* Instalation with rvm:
    * Create the ruby enviroment:
```
  $ bash --login 
  $ rvm install ruby-2.2.5
  $ rvm use ruby-2.2.5
  $ rvm gemset create shoes-store
  $ rvm gemset use shoes-store
  $ gem install bundler
  $ bundle install
```
    * If there is a problem with nokigiri, the gem is downloaded in the project. Just run: `gem install nokogiri-1.8.0.gem` and continue...
```
  $ bundle install
  $ rake db:create
  $ rake db:migrate
  $ rails s
```

And Thant's it, the project is running in `http://localhost:3000`

Developed by: @pdonaire1
Ing. Pablo Alejandro González Donaire.


