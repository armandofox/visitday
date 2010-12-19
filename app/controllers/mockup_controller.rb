class MockupController < ApplicationController

  before_filter :read_mockup_data

  def students ; end
  def calendar ; end

  private
  def read_mockup_data
    @params = YAML::load(IO.read("#{RAILS_ROOT}/test/fixtures/mockup.yml"))
  end

end
