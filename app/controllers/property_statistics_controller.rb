class PropertyStatisticsController < ApplicationController
  def new
  	@property_statisitc =	PropertyStatistic.new
  end

  def create
  	@property_statisitc = PropertyStatistic.new(create_params)
  	if @property_statisitc.save
      render :create
    else
      render :error
    end
  end

  private

  def create_params
  	params.require(:property_statistic).permit!
  end

end
