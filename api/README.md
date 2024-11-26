## api/app

### 📝 description
This project is a simple API app built from scratch. This implementation is based on [Using Rails for API-only Applications](https://guides.rubyonrails.org/api_app.html).

### 📓 reference


### cloning this project
You might want to simply clone this project instead of cloning my entire `rails/` repo. To do that, run the following commands in the directory you wish this application to be.
```bash
git clone -n --depth=1 --filter=tree:0 git@github.com:ghzeni/rails.git 
cd rails
git sparse-checkout set --no-cone api
git checkout
```
Note: this will still bring the rails directory into the path, but only the api folder will be pulled.