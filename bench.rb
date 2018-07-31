Dir["./lib/*.rb"].each {|file| require file }
require 'benchmark'

Solutions = [ MissingNumbers::BasicSolve, MissingNumbers::DisjointArraySolve ]

def solution(task:,solve_class:)
    ans = nil
    basic_solve_time = Benchmark.measure {
        ans = solve_class.miss_nums_finder(task[:quest])
    }
    puts "%.4f : #{solve_class.name}" % basic_solve_time.real
    raise "#{solve_class.name} Fails" if ans.sort != task[:answer]
    ans
end

def measurements (max_value:, missing_amount:)
    puts "max_value: #{max_value}, missing_amount: #{missing_amount}"
    task = nil
    generate_time = Benchmark.measure{
        task = MissingNumbers::QuestGenerator.generate({max_value:max_value, missing_amount:missing_amount})
    }
    puts "Generate quest: %.4f" % generate_time.real

    Solutions.each do |solve_class|
        solution(task: task, solve_class: solve_class)
    end
end

max_value = 10000

1.times do
    measurements(max_value: max_value, missing_amount: 5)
    max_value *= 5
end
