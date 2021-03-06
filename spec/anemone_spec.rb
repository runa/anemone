require File.expand_path(File.dirname(__FILE__)) + '/spec_helper'

describe Anemone do

  it "should have a version" do
    Anemone.const_defined?('VERSION').should == true
  end

  it "should return a Anemone::Core from the crawl, which has a PageStore" do
    result = Anemone.crawl(SPEC_DOMAIN)
    result.should be_an_instance_of(Anemone::Core)
    result.pages.should be_an_instance_of(Anemone::PageStore)
  end

end
