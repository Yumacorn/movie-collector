# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Sinatra DSL used to build the web application
- [x] Use ActiveRecord for storing information in a database - User and Movie models inherit properties from ActiveRecord
- [x] Include more than one model class (e.g. User, Post, Category) - User and Movie model classes
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many movie models
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Movie model belongs_to User model
- [x] Include user accounts with unique login attribute (username or email) - Added validation prior to saving User model that email has 'uniqueness'
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [ ] Ensure that users can't modify content created by other users
- [x] Include user input validations
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
