# MyRecipes Ruby on Rails App with Testing [![Code Climate](https://codeclimate.com/github/iposton/myrecipes/badges/gpa.svg)](https://codeclimate.com/github/iposton/myrecipes)
[![Circle CI](https://circleci.com/gh/iposton/myrecipes/tree/master.svg?style=svg)](https://circleci.com/gh/iposton/myrecipes/tree/master)

<h3>Get in the Kitchen and make something good with <a href="https://myrecipes-ruby.herokuapp.com/">‘COOKIN’</a></h3>

Life’s busy. Who can remember want to cook for dinner. Cookin has many simple easy to make recipes. You can browse recipes, create an account and add your favorite recipe, you can like/dislike recipes, and leave a review. <a href="https://myrecipes-ruby.herokuapp.com/register">Go sign up!</a>

<h3>Software used in Cookin</h3>

Cookin runs on these technologies:

<ul>
  <li>Rails 4.1.7</li>
  <li>Ruby 2.1.3</li>
  <li>PostgreSQL</li>
  <li>JQuery</li>
  <li>Bootstrap 3.3.2</li>
  <li>Circle CI for continuous integration</li>
  <li>Heroku for deployment</li>
  <li>AWS - S3</li>
  <li>Code Climate</li>
</ul>

<h3>Ruby Gems Installed in Cookink</h3>

Cookin uses the following Gems:

<ul>
  <li>sqlite3</li>
  <li>better_errors (streamlined development)</li>
  <li>rails_12factor (heroku deployment)</li>
  <li>bootstrap-sass</li>
  <li>carrierwave</li>
  <li>mini_magick</li>
  <li>will_paginate</li>
  <li>bootstrap-will_paginate</li>
  <li>bcrypt</li>
  <li>fog</li>
  <li>pry</li>
</ul>

Cookin uses the following Gems in production (heroku deployment):

<ul>
  <li>pg(postgreSQL)</li>
  <li>thin</li>
  <li>rails_12factor</li>
  <li>unicorn</li>
</ul>

Run the following commands to use these gems

<ul>
  <li>To install to your machine, run</li>

      <code>gem install name_of_gem_to_install</code>

  <li>To include the gem into your app,</li>

        add each gem to your Gemfile, then
        run <code>bundle install</code>

</ul>
<h3>Databases in Cookin</h3>
<p>To set up the database in Cookin, please be sure to install Posgresql to your local machine, and to include the 'pg' gem in the app.</p>
In order to run the test suite, in development you'll need to rake the migration files with the following command:

<code>rake db:migrate</code>


<h3>Deploy to Heroku</h3>
<p>To deploy this app live to Heroku I had to first sign up for an account at <a href="www.heroku.com">Heroku</a>, download the <a href="https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up">Heroku Toolbelt</a>, and then follow these steps from the command line.</p>

<ol>

  <li>run <code>git init</code></li>
  <li>run <code>heroku login</code> (enter username and password) </li>
  <li>run <code>heroku create</code> (name-your-app) </li>
  <li>run <code>git add -A</code> then run <code>git commit -m "changes"</li>
  <li>run <code>git push heroku master</code> </li>
  <li>run <code>heroku run rake db:migrate</li>
  <li>See it live <a href="https://myrecipes-ruby.herokuapp.com/">Cookin</a> on Heroku!</li>
  
</ol>


###Running the test suite in Cookin

run: <code>rake test</code>
  
###Thanks for checking out COOKIN!

Feel free to ask questions or send pull requests. Or Go to <a href="https://myrecipes-ruby.herokuapp.com/">Cookin</a> and set up a profile and add some new recipes! Donations can be made in hot-sauce packets. Thank you!

Want to make your own recipe app go to <a href="https://www.udemy.com/pro-rubyonrails/?utm_campaign=email&utm_source=sendgrid.com&utm_medium=email">The Professional Ruby on Rails Developer Course</a> by Mashrur Hossain on Udemy.
