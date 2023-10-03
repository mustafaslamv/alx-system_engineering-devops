#!/usr/bin/env ruby
sender =  ARGV[0].scan(/(?<=from:)(?:\w+|\+?\d+)/).join
receiver = ARGV[0].scan(/(?<=to:)(?:\w+|\+?\d+)/).join
flags = ARGV[0].scan(/(?<=flags:)(-?[01]:-?[01]:-?[01]:-?[01]:-?[01])/).join
puts sender+","+receiver+","+flags
