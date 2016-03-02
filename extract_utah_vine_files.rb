require 'net/ftp'
require 'pry'

UTAH_FTP_HOST = ENV["UTAH_FTP_HOST"]
UTAH_FTP_USER = ENV["UTAH_FTP_USER"]
UTAH_FTP_PASSWORD = ENV["UTAH_FTP_PASSWORD"]
raise "CHECK CREDENTIALS" unless UTAH_FTP_HOST && UTAH_FTP_USER && UTAH_FTP_PASSWORD

# @param [String] file A file name like "vine_court_event.ul"
def download(file, local_file)
  FileUtils.rm_rf(local_file)
  begin
    @ftp.get(file, local_file)
    puts " -- DOWNLOADED #{file} TO #{local_file}"
  rescue Net::FTPPermError => e
    puts " -- FAILED TO OPEN #{file}" if e.message.include?("550 Failed to open file.")
  end
end

#
# Connect to ftp server.
#

EXPECTED_FILE_NAMES = ["vine_case.ul", "vine_charge.ul", "vine_court_event.ul", "vine_delete.ul"]

Net::FTP.open(UTAH_FTP_HOST, UTAH_FTP_USER, UTAH_FTP_PASSWORD) do |ftp|
  @ftp = ftp

  #
  # Download files.
  #

  files = @ftp.nlst.select{|file| EXPECTED_FILE_NAMES.include?(file)}
  files.each do |file|
    local_file = "utcourts/#{file}"
    download(file, local_file)
  end
end
