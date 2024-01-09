<% flash.each do |key, value| %>
  <div class="alert alert-<%= key %>">
    <%= value %>
  </div>
<% end %>

Employees
first name
last name
title
email
phone
bio
linkedin_url
vcard_url
image_url
in_leadership






jr = {
  first_name: "Justin",
  last_name: "Ramirez",
  title: "CEO and Founder",
  email: "jjframirez@gmail.com",
  office_phone: "832-415-6399",
  profile_image_url: "https://www.gordonbrothers.com/wp-content/uploads/2022/08/jramirez_headshot_thumbnail_434.jpg",
  linkedin_url: "https://www.linkedin.com/in/justinjframirez/",
  in_leadership: true 
}