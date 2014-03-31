class Figure < ActiveRecord::Base

  belongs_to :visualisation
  attr_accessible :columnHeadings, :dataSet, :doi, :title, :visualisation

end
