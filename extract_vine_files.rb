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
  archive_files = ftp.list
  puts "FOUND #{archive_files.count} ARCHIVE FILES"
  archive_files.each do |file|
    puts file
  end

  #
  # Download incoming files
  #

  EXPECTED_INCOMING_FILE_NAMES = []

  ftp.chdir("../../incoming")
  incoming_files = ftp.list
  #incoming_files.reject!{|file| file.include?("sbstnc_tst")}
  puts "FOUND #{incoming_files.count} INCOMING FILES"
  incoming_files.each do |file|
    puts file #> "-rw-r--r--    1 609      2400       338882 Mar 01 07:10 cjs_judge.ul"
    match = file.match(/\d\d:\d\d/)
    time = match[0]
    file_name = file.partition(time).last.strip
    local_file_name = "slco/vine/incoming/#{file_name}"
    FileUtils.rm_rf(local_file_name)
    #ftp.get(file_name, local_file_name) #> Errno::EINVAL: Invalid argument - getpeername(2)
  end


  ftp.nlst("*.zip")

  #files = ftp.list('n*')
  #ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
end
