require 'net/ftp'
require 'pry'

# Configure connection credentials.

SLCO_FTP_HOST = ENV["SLCO_FTP_HOST"]
SLCO_FTP_USER = ENV["SLCO_FTP_USER"]
SLCO_FTP_PASSWORD = ENV["SLCO_FTP_PASSWORD"]

raise "CHECK CREDENTIALS" unless SLCO_FTP_HOST && SLCO_FTP_USER && SLCO_FTP_PASSWORD

#
# Connect to ftp server.
#

Net::FTP.open(SLCO_FTP_HOST) do |ftp|
  ftp.login(SLCO_FTP_USER, SLCO_FTP_PASSWORD)
  #ftp.passive = true

  #
  # Download archived files.
  #

  ftp.chdir('archive/vine')
  archive_files = ftp.nlst("*")
  puts "FOUND #{archive_files.count} ARCHIVE FILES"
  archive_files.each do |file|
    puts file
  end

  #
  # Download incoming files
  #

  ftp.chdir("/incoming")
  incoming_files = ftp.nlst("*")
  #> ["cjs_judge.ul", "login.txt", "sbstnc_tst", "vine", "vine_case.ul", "vine_charge.ul", "vine_court_event.ul", "vine_delete.ul"]
  # "vine" and "sbstnc_tst" are both empty dirs
  incoming_files.reject!{|file| ["sbstnc_tst","vine"].include?(file) }
  puts "FOUND #{incoming_files.count} INCOMING FILES"
  incoming_files.each do |file|
    local_file = "slco/vine/incoming/#{file}"
    FileUtils.rm_rf(local_file)
    begin
      ftp.get(file, local_file)
      puts " -- DOWNLOADED #{file} TO #{local_file}"
    rescue Net::FTPPermError => e
      puts " -- FAILED TO OPEN #{file}" if e.message.include?("550 Failed to open file.")
    end
  end
end
