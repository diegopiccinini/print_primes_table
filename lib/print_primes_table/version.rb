Dir[File.join(File.dirname(__FILE__),'*.rb')].each {|file| require file }
Dir[File.join(File.dirname(__FILE__),'validators','*.rb')].each {|file| require file }
Dir[File.join(File.dirname(__FILE__),'options','*.rb')].each {|file| require file }

module PrintPrimesTable
  VERSION = "0.0.4"
  OPTIONS =['--only-primes','--help']
  DEFAULT_TOTAL = 10
  DEFAULT_START = 2
end
