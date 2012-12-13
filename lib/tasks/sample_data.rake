namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(email: "ganesh.newbie@invoscape.com",
                         password: "admin123",
                         password_confirmation: "admin123")
    admin.toggle!(:admin)

  end
end
