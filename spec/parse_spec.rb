require "spec_helper"
describe "parsing cs" do
  {
    "<%# Subject %>"       => "<%= subject %>",
    "<%# Subject.Other %>" => "<%= subject.other %>",
    "<%# OtherSubject %>"  => "<%= other_subject %>"
  }.each do |cs_codeblock, erb_compatible|
    it "process #{cs_codeblock} to #{erb_compatible}" do
      expect( CsCodeblocksToErb.parse(cs_codeblock) ).to eq erb_compatible 
    end
  end
end