Entry.create!(name: "Matz")
Entry.create!(name: "Yehuda Katz")
Entry.create!(name: "DHH")
Entry.create!(name: "Jose Valim")
Entry.create!(name: "Dr Nic")
Entry.create!(name: "John Nunemaker")
Entry.create!(name: "Aaron Patterson")

Appointment.create!(title: "Appointment 1", date: Date.today)
Appointment.create!(title: "Appointment 2", date: Date.tomorrow)
Appointment.create!(title: "Appointment 3", date: 2.days.from_now)
