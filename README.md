# _Mario's Speciality Food Products_

#### _This is an independent project exploring database relationships, scopes, seeds, validations and callbacks in Rails, 11.17.2017_

#### By _Riki Montgomery_

### Description

_Mario us the founder and CEO of Mario's Speciality Food Products(a fictional company). He is looking for an MVP of for his new website. He's especially concerned about the information in his database. The stakes are higher than usual, since Mario's old site had thousands of unique visitors each day._

_The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country of origin. All reviews should have author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well._

_The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews (see the user stories below)._

![description](image.file)

### User Stories

* _Users should be able to see product with the most reviews._
* _Users should be able to see the three most recently added products._
* _Users who want to buy local products should be able to see all products made in the USA._
* _Users should if any fields are not filled out, including rating._
* _Users should only be able to add an integer between 1 and 5 to the rating._
* _Users should only be able to leave review between 50 and 250 characters._
* _Users should see seed data for 50 products and 250 reviews._

### Further Exploration

* _Paginate products so a page of results will only show ten products at a time._
* _Allow users to group products by a country of origin of their choice._
* _Add a 'featured' boolean so admins can choose which products they'd like to feature._
* _Show the average rating for each product._
* _Add a scope to retrieve the products with the highest average rating._
* _Change the ratings system so stars (or another icon) are used instead of a number._
* _Add Images throughout the site, including images for Products. You can use URLs (easiest) or use the Paperclip gem (which we'll be covering next week)._
* _Jump ahead to next week and add user authentication to your site._
* _Choose a site online with a style you like, build a style for this site based on it, and include a link to that site within the README.md file._

### Technologies Used

* _HTML_
* _CSS/SASS_
* _Bootstrap_
* _Ruby on Rails_

### Configuration

#### MAC
* _Run `$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`. This will install Homebrew, a package manager for OS X that makes it easy to install developer software. When you finish, Homebrew might tell you how to install a compiler (it differs depending on your version of OS X)._
* _Run `$ echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile`. This tells your system where to find the programs you install with Homebrew. Then, run `$ source ~/.bash_profile` to add this configuration to your open terminal window._
* _Run `$ brew doctor` and fix any problems it tells you about._
* _Run `$ brew install ruby-install` to install ruby-install, a tool for installing Ruby. (Duh.) Then run `$ ruby-install ruby 2.4.1` to install Ruby. Also, you can run `$ rm -rf ~/src/` to remove the source code that ruby-install downloaded._
* _Run `$ brew install chruby`. This will install chruby, a program to manage which versions of Ruby you're using._
* _Run `$ echo 'source /usr/local/opt/chruby/share/chruby/chruby.sh' >> ~/.bash_profile` and `$ echo 'source /usr/local/opt/chruby/share/chruby/auto.sh' >> ~/.bash_profile`. This will set up Bash to use chruby and also set up auto-switching of Ruby versions. Then run `$ echo "ruby-2.4" > ~/.ruby-version` to set your default Ruby version to 2.4. Again, run `$ source ~/.bash_profile` to add this configuration to your open terminal window._
* _The last configuration I'd recommend is that you run `$ echo "gem: --no-rdoc --no-ri" > ~/.gemrc` so that when you install Ruby gems, you won't install the documentation by default. (It takes longer than installing the gems themselves, and better documentation is available online.)
* _Run `$ gem install rails` in the terminal_

#### WINDOWS

_On Windows, the easiest way to install Ruby is with the [RailsInstaller](http://railsinstaller.org/en), which includes Ruby and a few other tools we'll use throughout these lessons._

### Database Requirements

#### MAC

_If you've already set up Ruby according to the earlier lessons, you have Homebrew installed. Homebrew makes it really easy to install Postgres. Just run the following:_

* _Run `$ brew install postgres`_
* _Run `echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash_profile` to tell Postgres where to find the database cluster where your databases will be stored_
* _Run `echo "export PGHOST=/tmp" >> ~/.bash_profile` to help some programs find Postgres more easily_
* _Run `source ~/.bash_profile` to load these configuration changes_
* _Run `postgres` to start the Postgres server_
* _Run `ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents` if you want Postgres to boot at startup and run in the background_
* _And to start it now (since it won't boot automatically until you restart your computer), run `pg_ctl start`._

### Database Initialization

1. _Run `$ bundle update` then `$ bundle install` or just `$ bundle` to install the Gemfile._
2. _Run `$ rake db:create` to create the databases._
3. _Run `$ rake db:migrate`, and `$ rake db:test:prepare` prepare the test database._

### Deployment instructions

_Make sure you have postgres running, then run `$ rails serve` and got to [localhost:3000](localhost:3000) in your favorite browser._

### Additional Information

Ruby Programming Language on Github: [https://github.com/ruby/ruby](https://github.com/ruby/ruby)

Ruby Language homepage: [https://www.ruby-lang.org/en/](https://www.ruby-lang.org/en/)

Ruby Documentation: [http://ruby-doc.org/](http://ruby-doc.org/)

Rails Documentation: [http://guides.rubyonrails.org/](http://guides.rubyonrails.org/)

Ruby on Rails API: [http://api.rubyonrails.org/](http://api.rubyonrails.org/)

Rails on Github: [https://github.com/rails/rails](https://github.com/rails/rails)

### Support and contact details

_If you have any questions or suggestions please make a contribution to my repository or email [me](mostriki820@gmail.com) directly._

### License

_© 2017 Mario's Speciality Food Products_
