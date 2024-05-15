## authentication

### 📝 description
This folder is dedicated to studying and understanding authentication, how to implement it using multiple solutions, pros and cons etc.

### cloning this project
You might want to simply clone this project instead of cloning my entire rails/ repo. To do that, run the following commands in the directory you wish this application to be.
```bash
git clone -n --depth=1 --filter=tree:0 git@github.com:ghzeni/rails.git 
cd rails
git sparse-checkout set --no-cone authentication
git checkout
```
Note: this will still bring the rails directory into the path, but only the authentication application will be pulled.