require 'yaml'

module ChaosUser
  class Validator
    attr_accessor :use_cases
    def initialize(validation_target)
      @target = validation_target
      @use_cases = YAML::load_file("use_cases.yml")[self.class.name.split("::")[-1]].map { |c| Regexp.new(c) }
    end
  end
end
