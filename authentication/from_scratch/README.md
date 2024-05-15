## authentication/from_scratch

### 📝 description
This project is a simple authentication system built from scratch. This implementation is based on [Rails Cast #250 - Authentication From Scratch](http://railscasts.com/episodes/250-authentication-from-scratch) and built upon the [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html) guide blog application.

The sole implementation of the blog application can be found here: [rails/blog](rails/blog#blog).

<!-- It includes a user model, a session controller, and a user controller. The user model is responsible for handling user data, the session controller is responsible for handling user login and logout, and the user controller is responsible for handling user registration. -->

### 📓 reference


### cloning this project
You might want to simply clone this project instead of cloning my entire rails/ repo. To do that, run the following commands in the directory you wish this application to be.
```bash
git clone -n --depth=1 --filter=tree:0 git@github.com:ghzeni/rails.git 
cd rails
git sparse-checkout set --no-cone authentication
git checkout
```
Note: this will still bring the rails directory into the path, but only the authentication application will be pulled.