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
	"""
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