class PropertyStatisticsController < ApplicationController
  def new
  	@property_statisitc =	PropertyStatistic.new
  end

  def create
  	@property_statisitc = PropertyStatistic.new(create_params)
  	@property_statisitc.save
  end

  private

  def create_params
  	params.require(:property_statistic).permit!
  end

end
