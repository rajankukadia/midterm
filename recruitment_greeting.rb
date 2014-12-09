require "json"
require "open-uri"
require "pp"
require_relative "recruitment_api.rb" 

class Recruitment 

  attr_accessor :jobtitle

  def initialize(jobtitle)
    @jobtitle = ["accounting"]
  end

  def job 
    @jobtitle
  end 

  def user_input
    gets.strip
  end 

  def job_answer(recruitment_api)
    if gets.strip.chomp == "YES"
      puts "Here are the listing for that job search.."
    elsif gets.strip.chomp == "NO"
      puts "No Problem this application is not for you"
    end
  end 



  class Time
  def to_ms
    (self.to_f * 1000.0).to_i
  end

end

end

puts "Hello, what is your name?"
user_input = gets.strip
name = user_input
start_time = Time.now
sleep(2)
end_time = Time.now
puts "Hello " + name + ", welcome to the Job Finder."
start_time = Time.now
sleep(2)
end_time = Time.now
puts "Would you like to look for a job? YES or NO?"
gets.strip.chomp 
start_time = Time.now
sleep(2)
end_time = Time.now
puts "From this list what job are you looking for? Please type the number corresponding to the job category.."
puts "job_categories_choice_hash"











