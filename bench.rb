require './test/quest_generator_test.rb'
require './test/basic_solve_test.rb'
require './test/set_test.rb'
require './test/set_merge_test.rb'
require './test/storage_test.rb'
require './test/disjoint_array_solve_test.rb'
require 'benchmark'

def measurements (max_value:, missing_amount:)
    puts "max_value: #{max_value}, missing_amount: #{missing_amount}"
    task, ans, ans_disjoint = nil, nil, nil
    generate_time = Benchmark.measure{
        task = MissingNumbers::QuestGenerator.generate({max_value:max_value, missing_amount:missing_amount})
    }
    puts "Generate quest: %.4f" % generate_time.real

    basic_solve_time = Benchmark.measure {
        ans = MissingNumbers::BasicSolve.miss_nums_finder(task[:quest])
    }
    puts "Basic solve: %.4f" % basic_solve_time.real

    disjoint_array_solve_time = Benchmark.measure {
        ans_disjoint = MissingNumbers::DisjointArraySolve.miss_nums_finder(task[:quest])
    }
    puts "Disjn solve: %.4f" % disjoint_array_solve_time.real

    p ans, ans_disjoint

    raise "BasicSolve Fails" if ans.sort != task[:answer]
    raise "DisjointArraySolve Fails" if ans_disjoint.sort != task[:answer]
end

max_value = 10000

1.times do
    measurements(max_value: max_value, missing_amount: 5)
    max_value *= 5
end
