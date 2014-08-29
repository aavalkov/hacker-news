require 'spec_helper'

describe Comment do
  it { should validate_presence_of :name }
  it { should belong_to :link }
end
