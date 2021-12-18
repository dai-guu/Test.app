Rails.application.routes.draw do
  resources:layouts
  root to:'layouts#top'
end

