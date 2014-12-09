require "json"
require "open-uri"
require "pp"

# Store URL in a variable 'url'
url = "http://api.trademe.co.nz/v1/Categories/Jobs.json"

# Open that URL, read the raw contents of it, and store in variable "raw_data"
raw_data = open(url).read

# Parse the raw data into JSON and store in variable "job_categories"
job_categories = JSON.parse(raw_data)

# Iterate over each hash of the job_categories, get the name. The map method builds an array of strings (because category["Name"] is a string).
job_category_list = job_categories.map { |category| category["Name"] }

# Create a new hash (empty) for use at the next step
job_categories_choice_hash = {}

# Iterate over each element (string) of job_category_list to fill in our hash.
job_category_choices = job_category_list.each_with_index { |category, index| job_categories_choice_hash[index] = category }

# Output the contents of job_category_list to the terminal


pp "#{job_categories_choice_hash}"

















