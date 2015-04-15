require "cs_codeblocks_to_erb/version"
require "active_support/core_ext/string/inflections"
require "pry"

module CsCodeblocksToErb
  module_function
  def parse(codeblock)
    get_codeblocks(codeblock).map do |block|
      "<%= #{process_block_var(block)} %>"
    end.join("")
  end

  def get_codeblocks(input)
    input.rpartition(/(<%# \S+ %?>)/).delete_if { |x| x.size == 0 }
  end

  def process_block_var(block_var)
    block_var.split(/\s/)[1].underscore
  end
end
