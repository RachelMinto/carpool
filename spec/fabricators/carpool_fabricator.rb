Fabricator(:carpool) do
  parking_address { Faker::Address.street_address }
  city { Faker::Address.city }
  state { Faker::Address.state_abbr }
  zipcode { ["07234", "55342", "44321"].sample }
  am_start { ["07:00", "08:00", "06:15"].sample }
  am_end { ["08:10", "08:30", "09:15"].sample }
  pm_start { ["04:00", "03:20", "05:15"].sample }
  pm_end { ["05:30", "06:30", "06:15"].sample }
  total_seats { Faker::Number.between(1, 6) }
end   