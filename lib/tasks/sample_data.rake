namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(email: "ganesh.newbie@invoscape.com",
                         password: "admin123",
                         password_confirmation: "admin123",
                         role:"admin")
    moderator = User.create!(email: "ganny.gan@gmail.com",
                         password: "moderator123",
                         password_confirmation: "moderator123",
                         role:"moderator")

  end
end	
