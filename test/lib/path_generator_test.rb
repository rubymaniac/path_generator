require File.expand_path('../../test_helper.rb', __FILE__)


describe PathGenerator do

  it "should generate the right paths" do
    paths_hash = {
      # Array configuration
      [] => [],
      [[], {}, nil, ""] => [],
      [:a] => [[:a]],
      [:a, nil, ""] => [[:a]],
      [:a, :b] => [[:a], [:b]],
      [:a, [:b]] => [[:a], [:b]],
      [{a: []}, :b] => [[:a], [:b]],
      [{a: {}}, {b: [nil, [], :d]}] => [[:a], [:b, :d]],
      [{a: {}}, {b: [:c, :d]}] => [[:a], [:b, :c], [:b, :d]],

      # Hash configuration
      {} => [],
      { [] => "foo", nil => "bar", "" => :a } => [],
      {a: nil, b: [], c: {}, d: ""} => [[:a], [:b], [:c], [:d]],
      {a: {b: [], c: nil}} => [[:a, :b], [:a, :c]],
      {a: {b: [:c, {d: ""}], f: []}} => [[:a, :b, :c], [:a, :b, :d], [:a, :f]],
      {a: "b", "foo" => [nil, "", :b]} => [[:a, "b"], ["foo", :b]],
      {a: [], b: { c: [] }} => [[:a], [:b, :c]]
    }

    paths_hash.each do |obj, expected|
      PathGenerator.new(obj).paths.to_a.must_equal expected
    end
  end

end
