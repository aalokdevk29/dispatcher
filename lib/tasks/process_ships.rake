task process_ships: :environment do
  ProcessShipsJob.perform_now
  puts 'Done!'
end
