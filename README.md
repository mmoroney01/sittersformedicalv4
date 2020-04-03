<div class="index_search_top_bar">
  <% if user_signed_in? %>
    <%= button_to "Sign out", destroy_user_session_path, :method => :delete %>
  <% end %>

  <h1 style="text-align:center;">Please select only ONE of the following: "I need a Volunteer!" OR "I am Willing to Volunteer"</h3>
  </div>

  <div class="hero_volunteer_div">
    <div class="hero_div">
    <%= form_with model: User, url: '/users/volunteer_index', method: :get, remote: true do |f| %>
      <br>
      I need a Volunteer!<%= f.check_box :hero, placeholder: "hero" %><br><br>
      Zip Code
      <%= f.text_field :zip_code, placeholder: "Zip Code XXXXX:" %><br><br>  

      Services Needed: Babysitting<%= f.check_box :babysitting, placeholder: "babysitting" %>
      Grocery Shopping<%= f.check_box :grocery_shopping, placeholder: "grocery_shopping" %>
      E-Learning Assistance<%= f.check_box :e_learning_assistance, placeholder: "e_learning_assistance" %><br><br>
      I Need Someone Available on the Following Days:<br>
      Sunday<%= f.check_box :sunday, placeholder: "sunday" %>
      Monday<%= f.check_box :monday, placeholder: "monday" %>
      Tuesday<%= f.check_box :tuesday, placeholder: "tuesday" %>
      Wednesday<%= f.check_box :wednesday, placeholder: "wednesday" %>
      Thursday<%= f.check_box :thursday, placeholder: "thursday" %>
      Friday<%= f.check_box :friday, placeholder: "friday" %>
      Saturday<%= f.check_box :saturday, placeholder: "saturday" %><br><br>
      I Need Someone Available at the Following Times:<br>
      Morning<%= f.check_box :morning, placeholder: "morning" %>
      Afternoon<%= f.check_box :afternoon, placeholder: "afternoon" %>
      Evening<%= f.check_box :evening, placeholder: "evening" %>
      Night<%= f.check_box :night, placeholder: "night" %><br><br>  

      I Need Someone With Transportation<%= f.check_box :yes_transit, placeholder: "yes_transit" %>
      I Don't Need Someone With Transportation<%= f.check_box :no_transit, placeholder: "no_transit" %><br><br>
      <div class="search_div"><%= f.submit "Search" %></div><br>
    <% end %>
  </div>

    <div class="volunteer_div">
    <%= form_with model: User, url: '/users/hero_index', method: :get, remote: true do |f| %>
      <br>
      I am Willing to Volunteer<%= f.check_box :volunteer, placeholder: "volunteer" %><br><br>
      Zip Code <%= f.text_field :zip_code, placeholder: "Zip Code XXXXX:" %><br><br>
      Services Provided: Babysitting<%= f.check_box :babysitting, placeholder: "babysitting" %>
      Grocery Shopping<%= f.check_box :grocery_shopping, placeholder: "grocery_shopping" %>
      E-Learning Assistance<%= f.check_box :e_learning_assistance, placeholder: "e_learning_assistance" %><br><br>
      I am Available on the Following Days:<br>
      Sunday<%= f.check_box :sunday, placeholder: "sunday" %>
      Monday<%= f.check_box :monday, placeholder: "monday" %>
      Tuesday<%= f.check_box :tuesday, placeholder: "tuesday" %>
      Wednesday<%= f.check_box :wednesday, placeholder: "wednesday" %>
      Thursday<%= f.check_box :thursday, placeholder: "thursday" %>
      Friday<%= f.check_box :friday, placeholder: "friday" %>
      Saturday<%= f.check_box :saturday, placeholder: "saturday" %><br><br>
      I am Available at the Following Times:<br>
      Morning<%= f.check_box :morning, placeholder: "morning" %>
      Afternoon<%= f.check_box :afternoon, placeholder: "afternoon" %>
      Evening<%= f.check_box :evening, placeholder: "evening" %>
      Night<%= f.check_box :night, placeholder: "night" %><br><br>
      I Have Transportation<%= f.check_box :yes_transit, placeholder: "yes_transit" %>
      I Don't Have Transportation<%= f.check_box :no_transit, placeholder: "no_transit" %><br><br>
      <div class="search_div"><%= f.submit "Search" %></div><br>
    <% end %>
  </div>
</div>
<div id="search-results-append"></div>