VisFig
======

Reproducable Visualisations of Scientific Datasets.

VisFig is a site that allows scientists to upload their Open Source visualisation software, specify a dataset on FigShare, and generate an interactive figure. 

This figure and a link to a VisFig page can be put in a publication so readers can view the interactive figure and use their own datasets to reproduce it.

Find our live demo here: http://visfig.azurewebsites.net/figshare.html

Setup
======

Setup requires Ruby on Rails 3.2.X and Ruby 1.9.3

<code>git clone git@github.com:njall/VisFig.git</code>

<code>bundle install</code>

<code>bundle exec rake db:migrate</code>

<code>rails s</code>


