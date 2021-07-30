task get_ships: :environment do
  GetShipsJob.perform_now
  puts 'Done!'
end
