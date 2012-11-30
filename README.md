== Rails Reverse Polymorphic Example

This project demonstrates how to write a many-to-many relationship in ActiveRecord that uses a polymorphic join table, e.g. if you have many things that need to be tagged. Our schema looks like this:

    articles --< taggings >-- tags

Just look at the database migration and model classes to see how to set this up.

You can find code to excerise the models in `spec/models/tagging_spec.rb`.

To run the tests, just say:

    RAILS_ENV=test rake db:migrate
    rspec spec


