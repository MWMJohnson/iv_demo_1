















### TO-DO LIST BElOW=

### 1. checkout putting flash messages within the form.

### 2. Original Flash Alert Messages from YouTube Video.
  # <div class="container">
  #   <% flash.each do |key,msg| %>
  #     <div class="alert alert-<%=key%> alert-dismissible fade show"
  #     role="alert"
  #       <h6><strong><%= msg %></strong></h6>
  #       <button type="button" class="close" data-dismiss="alert"
  #       aria-label="Close">
  #         <span aria-hidden="true">&times;</span>
  #       </button>
  #     </div>
  #   <% end %>
  # </div>

### 3. Keep and Rename Justin's pic to local server and stop using Gordon Brothers Website.

### 4. Look into updating to Rails 7.1 for using gem "normalize" for further security

### 5. Potentially update to Rails 7.1 for authenticate_by method to implement additional security

### 6. Fix Employees#Index View Containers, you are totally missing a </div> tag around line 13 and 14 with the way you think

### 7. Convert Home Text in Navbar to Home Icon

### 8. Convert Certifications to appropiate Icons that are clickable links

### 9. Further Develop Leadership page, so that it is really just a show page, and develop a feature for a "GET employees_path" that has just the employees profile pic and name and title underneath and the profile picutre is clickable leading to a GET "/dashboard/:id" to; "users#show".

### 10. Create feature for Pop-Up to ask are you sure you "want to log out???"




# <div class="info">
# <p class="text-muted"><%= "Certifications: ASA, ABV, CFA" %></p>
# <a href="tel:346-554-3706" class="icon-link">
#   <i class="fas fa-phone fa-lg"></i>
# </a>
# <a href="mailto:matthewwmjohnson@gmail.com" class="icon-link">
#   <i class="far fa-envelope fa-lg"></i>
# </a>
# <%= link_to employee.linkedin_url, class: "icon-link" do %>
#   <i class="fab fa-linkedin fa-lg"></i>
# <% end %>
# </div>


# "      <p class='text-muted'>Justin began his career in business valuation at HSSK (Houston, TX) in August 2016. His valuation work has focused primarily on Fair Market Value and Fair Value engagements, serving clients across a wide variety of industries for the purposes of estate and gift tax reporting, purchase price allocations, M&A transactions, internal planning purposes, partner buy-ins and buyouts, fairness opinions, asset-backed lending and regulatory reporting, among other purposes. Additionally, Justin has provided valuation services in support of litigation matters, including the determination of economic damages and providing expert testimony regarding the determination of lost wages.</p>\n    \n      <p class='text-muted'>He holds the Accredited Senior Appraiser (ASA) credential (American Society of Appraisers), the Accredited in Business Valuation (ABV) credential (American Institute of Certified Public Accountants) and the Chartered Financial Analyst® (CFA) designation awarded by the CFA Institute.</p>\n        \n      <p class='text-muted'>His clients have ranged from single-location family owned/operated furniture manufacturers to large, multi-national bio/pharmaceutical companies, capital intensive oilfield machinery & equipment manufacturers to service oriented enterprises such as architectural/engineering firms and direct-to-consumer housewares brands, and quite a few industries in between.</p>\n        \n      <p class='text-muted'>Outside of his employment as a business valuation specialist, Justin occasionally speaks at University of Houston functions, promoting the university's MS Finance and MBA programs, and discussing careers in realm of financial analysis and business valuation more generally.</p>\n        \n      <p class='text-muted'>Before joining HSSK, Justin worked as a Midstream Analyst for Hart Energy (now Stratas Advisors) and as the Senior Financial Analyst for the U.S.-based transportation company, Trimac Transportation. Prior to his work in the field of finance and analysis, Justin provided engineering and graphic design services, with a focus on oil & gas and power-generation facilities.</p>\n        \n      <p class='text-muted'>Justin holds a Master of Science degree in Finance from the University of Houston and a Bachelor of Science degree in Economics from Texas A&M University. </p>"




# <div class="d-flex align-items-center justify-content-center">
#   <h1 class="display-5 subheader">Edit Profile</h1>
# </div>
# <hr>

# <div class="container">
#   <%= form_with model: @user, local: true, data: { turbo: false}, class: "container", url: user_path(@user), method: :patch do |form| %>
#     <div class="mb-3">
#       <%= form.label :password_challenge, "Current Password", class: "required text-muted" %>
#       <%= form.password_field :password_challenge, class: "form-control", required: true, placeholder: "Current Password" %>
#     </div>

#     <div class="mb-3">
#     <%= form.label :first_name, class: "text-muted" %>
#     <%= form.text_field :first_name, class: "form-control", placeholder: "First Name" %>
#     </div>

#     <div class="mb-3">
#     <%= form.label :last_name, class: "text-muted" %>
#     <%= form.text_field :last_name, class: "form-control", placeholder: "Last Name" %>
#     </div>

#     <div class="mb-3">
#     <%= form.label :email, class: "text-muted" %>
#     <%= form.email_field :email, class: "form-control", placeholder: "Email" %>
#     </div>

#     <div class="mb-3">
#       <%= form.submit class: "btn btn-primary" %>
#     </div>
#   <% end %>
#   </div>


### old employee index view code

# <!--
# <% @employees.each do |employee| %>

#   <div class="align-items-center justify-content-center mt-3 text-muted">
#   <div class="row justify-content-center">
  
#   <div class="col-12 col-md-6 text-center">
#     <img src="<%= employee.profile_image_url %>" class="profile_pic" alt="#{employee.first_name} #{employee.last_name}">
#     <h2>Justin Ramirez<span class="certifications">, ASA, ABV, CFA</span></h2>
#     <h3>Managing Director</h3>
#     <a href="tel:346-554-3706" class="icon-link">
#       <i class="fas fa-phone fa-lg"></i>
#     </a>
#     <a href="mailto:matthewwmjohnson@gmail.com" class="icon-link">
#       <i class="far fa-envelope fa-lg"></i>
#     </a>
#     <%= link_to employee.linkedin_url, class: "icon-link" do %>
#       <i class="fab fa-linkedin fa-lg"></i>
#     <% end %>
#   </div>
#   </div>
# </div>
# -->

# <!--
# <div class="container">
#   <div class="container-flex">
#     <div class="employee-info">
#       <img src="<%= employee.profile_image_url %>" class="profile_pic" alt="#{employee.first_name} #{employee.last_name}">
#       <div class="employee-nonpicture-info">
#         <div class="employee-name-cert">
#           <h3 class="employee-name"><%= "#{employee.first_name} #{employee.last_name}" %><span class="certifications">, ASA, ABV, CFA</span></h3>
#           </div>
#             <h4 class="employee_title"><%= employee.title %></h4>
#             <!--
#               <div class="info">
#                 <p class="mb-0">Phone: <%= link_to employee.office_phone, "tel:#{employee.office_phone}" %></p>
#                 <p class="mb-0">Email: <%= link_to employee.email, "mailto:matthewwmjohnson@gmail.com" %></p>
#                 <p class="text-muted"><%= link_to "LinkedIn", employee.linkedin_url %></p>
#               </div>
#             -->
#           </div>
#           <div class="row justify-content-center">
#             <div class="col-12 col-md-6 text-center">

#             <!--
#               <a href="tel:346-554-3706" class="icon-link">
#                 <i class="fas fa-phone fa-lg"></i>
#               </a>
#               <a href="mailto:matthewwmjohnson@gmail.com" class="icon-link">
#                 <i class="far fa-envelope fa-lg"></i>
#               </a>
#               <%= link_to employee.linkedin_url, class: "icon-link" do %>
#               <i class="fab fa-linkedin fa-lg"></i>
#           <% end %>
#           </div>
#             -->
#       </div>
#     </div>


#       <!-- 
#         <section class="bio">
#           <% employee_bio = sanitize employee.bio %>
#           <%= employee_bio %>
#         </section>
#       -->
#   <% end %>
# </div>
# -->



