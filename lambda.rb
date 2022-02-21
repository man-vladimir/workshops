# https://www.codecademy.com/courses/learn-ruby/lessons/blocks-procs-and-lambdas/exercises/passing-your-lambda-to-a-method

crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}
 
first_half = lambda { |_, value| value < "M"}
puts crew.select(&first_half)

