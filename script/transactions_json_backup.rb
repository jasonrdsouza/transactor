
backup_location = '/home/jason/Dropbox/transactions.json'
File.open(backup_location, 'w') {|f| f << Transaction.all.to_json}
puts "Backup JSON file written to #{backup_location}"