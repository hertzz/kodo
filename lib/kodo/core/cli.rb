require 'optparse'

module Kodo
  class CLI
    def self.parse(args)
      options = OptionParser.new do |opts|
        opts.banner = 'usage: kodo [OPTIONS]'

        opts.on('-a', '--algorithm TYPE', 'Generation algorithm') do |algorithm|
          Kodo.generator = algorithm
        end

        opts.on_tail('-v', '--version', 'Show version information') do
          puts "kodo #{Kodo::VERSION}"
          exit(0)
        end

        opts.on_tail('-h', '--help', 'Show this help menu') do
          puts opts
          exit(0)
        end
      end.parse!
    end
  end
end
