require "cs_codeblocks_to_erb/version"
require "active_support/core_ext/string/inflections"

module CsCodeblocksToErb
  module_function
  def parse(codeblock)
    "<%= #{process_block_var(codeblock)} %>"
  end

  def get_codeblocks(input)
    input.rpartition(/(<%# \S+ %?>)/)
  end

  def process_block_var(block_var)
    block_var.split(/\s/)[1].underscore
  end
end