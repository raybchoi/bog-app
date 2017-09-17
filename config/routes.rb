Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# index => showing all the creatures
get "/creatures" => "creatures#index", as: "creatures"
# new => displaying an HTML form to create a new creature
get "/creatures/new" => "creatures#new", as: "new_creature"
# post => creating a new creature in the database
post "/creatures" => "creatures#post"
# show => displaying a specific creature
get "/creatures/:id" => "creatures#show", as: "creature"
#edit => displaying an HTML form to edit a specific creature
get "/creatures/:id/edit" => "creatures#edit", as:"edit_creature"
#update => updating a specific creature in the database
patch "/creatures/:id" => "creatures#update"
#delete => "deleting" a specific creature in the database
delete "/creatures/:id" => "creatures#delete"
end
