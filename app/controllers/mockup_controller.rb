class MockupController < ApplicationController

  before_filter :read_mockup_data

  def students ; end
  def calendar ; end

  private
  def read_mockup_data
    mockup_data = YAML::load(IO.read("#{RAILS_ROOT}/test/fixtures/mockup.yml"))
    @areas = mockup_data["areas"]
    @students = mockup_data["students"]
  end

end
