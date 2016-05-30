# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

##Task 2

def experienced?(candidate)
  candidate[:years_of_experience] > 2
end

##Task 3

def find(id)
  selected = @candidates.select do |candidate|
    candidate[:id] == id.to_i
  end

  if selected.empty?
    puts "ID not found."
  else 
    selected
  end
end

# More methods will go below

def has_requisite_github_points?(candidate, points)
  candidate[:github_points] >= points
end

def knows_rubyorpython?(candidate)
  candidate[:languages].any? { |language| ['Ruby', 'Python'].include? language }
end

def has_requisite_applied_days?(candidate, days)
  candidate[:date_applied] + days >= Date.new
end

def has_requisite_age?(candidate, age)
  candidate[:age] > age
end

## Task 4

REQUISITE_GITHUB_POINTS = 100
REQUISITE_AGE = 17
REQUISITE_DAYS_APPLIED = 15

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate) \
    && has_requisite_github_points?(candidate, REQUISITE_GITHUB_POINTS) \
    && knows_rubyorpython?(candidate) \
    && has_requisite_applied_days?(candidate, REQUISITE_DAYS_APPLIED) \
    && has_requisite_age?(candidate, REQUISITE_AGE)
  end
end

def all(candidates)
  green = []
  red = []

  candidates.each do |candidate|
    if experienced?(candidate) \
    && has_requisite_github_points?(candidate, REQUISITE_GITHUB_POINTS) \
    && knows_rubyorpython?(candidate) \
    && has_requisite_applied_days?(candidate, REQUISITE_DAYS_APPLIED) \
    && has_requisite_age?(candidate, REQUISITE_AGE)
      green.push(candidate)
    else
      red.push(candidate)
    end
  end

    puts "#{green}".green
    puts "#{red}".red
end


#test
# pp qualified_candidates(@candidates)


## Task 5

QUALIFICATION1 = :years_of_experience
QUALIFICATION2 = :github_points

def ordered_by_qualifications(candidates, qualification1, qualification2)
  ordered = candidates.sort_by {|candidates| [candidates[QUALIFICATION1], candidates[QUALIFICATION2]] }
end



# a.sort_by {|h| [ h['foo'],h['bar'] ]}

# a.sort { |a, b| [a['foo'], a['bar']] <=> [b['foo'], b['bar']] }
