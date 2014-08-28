require 'spec_helper'

describe Link do
  it{ should validate_presence_of :name }
  it{ should have_many :votes}
end
