<form action="/figures/<%= @figure.id %>" method="POST">
  <input type="hidden" name="_method" value="patch">
  <label>Name</label>
  <input type="text" id="figure_name" name="figure[name]" value="<%= @figure.name %>"><br></br>
  <label>Edit Landmarks:</label><br>

  <% Landmark.all.each do |landmark| %>
    <label><%= landmark.name %></label>
    <input type="checkbox" name="figure[landmark_ids][]" value="<%= landmark.id %>" id="<%= landmark.name %>" <%='checked' if @figure.landmarks.include?(landmark) %>>
  <% end %>
 <label>Add New:</label>
 <input type="text" id="new_landmark" name="landmark[name]"><br></br>


 <label>Edit Titles</label><br>
 <% Title.all.each do |title| %>
    <label><%= title.name %></label>
    <input type="checkbox" name="figure[title_ids][]" value="<%= title.id %>" id="<%= title.name %>" <%='checked' if @figure.titles.include?(title) %>>
  <% end %></br>
 <label>Add New Title:</label>
 <input type="text" id="new_title" name="title[name]"><br></br>




  <input type="submit" value="Edit Figure">

</form>