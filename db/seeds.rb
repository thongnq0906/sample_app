User.create!(name: "Quoc Thong", email: "thongnq0906@gmail.com",
  password: "123321", password_confirmation: "123321", admin: true,
  activated: true, activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123321"
  User.create!(name: name, email: email,password: password,
    password_confirmation: password, activated: true,
    activated_at: Time.zone.now)
end