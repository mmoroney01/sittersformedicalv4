
  def create
    p user_params
    if !user_params[:email] || !user_params[:password]
      p "AAA"
      redirect_to "/users/sign_in"
    else
      @user = User.where(user_params)
      p @user
      redirect_to "/"
    end
  end



      <% if flash[:alert].length > 1 %>
        <% flash[:alert].each do |error| %>
        <% end %> 
        <%= flash[:alert].length %>
      <% end %>



      <% if flash[:alert] %>
           <% flash[:alert].each do |error| %>
             <%= error %>
           <% end %>
         <% else %>
           <%= "no errors"%>
         <% end %>