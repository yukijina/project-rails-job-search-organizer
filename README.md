# README

This is Flatiron School Ruby on Rails project.

* About this project
** Job Search Organizer.
User can signup, log in and log out. User can also log in through third party log in(Google).
User can track their job search progress in their own checklist.
User can create a company and position, however only admin can edit after they are created.


* Ruby version
- Ruby 2.3.3
- Rails 5.2.3

* Running Locally
Make sure you have Ruby, Bundler.
1. Check out the repository
`git clone git@github.com:yukijina/project-rails-job-search-organizer.git`

2. Go to ththe file
`cd project-rails-job-search-organizer`

3. Bundle install
`bundle`

4. Create and Set up database
`rails db:migrate`
`rails db:seed`

5. Start the Rails server
You can start the rails server using the command given below.
`bundle rails s`

Now you can visit the app with http://localhost:3000


## License
This project is licensed under the MIT License.
