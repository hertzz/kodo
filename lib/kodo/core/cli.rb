require 'optparse'
require 'ostruct'

module Kodo
  class CLI
    def self.run(args)
      options = parse(args)
      generator = Kodo::Generator.new(options)
      generator.run
    end

    private

      def self.parse(args)
        options = OpenStruct.new

        parser = OptionParser.new do |opts|
          opts.banner = 'usage: kodo [OPTIONS]'

          opts.on('-a', '--algorithm TYPE', 'Generation algorithm') do |a|
            options.algorithm = a
          end

          opts.on('-c', '--count NUMBER', 'Number of entries to generate') do |c|
            options.count = c
          end

          opts.on_tail('-v', '--version', 'Show version information') do
            puts "kodo #{Kodo::VERSION}"
            puts "Copyright (C) 2015 - #{Kodo::AUTHOR_NAME.join(',')}"
            exit(0)
          end

          opts.on_tail('-h', '--help', 'Show this help menu') do
            puts opts
            exit(0)
          end
        end.parse!

        return options
      end
  end
end
