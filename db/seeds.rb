# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Employee.destroy_all
Employee.create!(
  first_name: "Justin",
  last_name: "Ramirez",
  title: "CEO & Founder",
  email: "justin@email.com",
  office_phone: "346-554-3706",
  bio: "      <p class='text-muted'>Justin began his career in business valuation at HSSK (Houston, TX) in August 2016. His valuation work has focused primarily on Fair Market Value and Fair Value engagements, serving clients across a wide variety of industries for the purposes of estate and gift tax reporting, purchase price allocations, M&A transactions, internal planning purposes, partner buy-ins and buyouts, fairness opinions, asset-backed lending and regulatory reporting, among other purposes. Additionally, Justin has provided valuation services in support of litigation matters, including the determination of economic damages and providing expert testimony regarding the determination of lost wages.</p>\n    \n      <p class='text-muted'>He holds the Accredited Senior Appraiser (ASA) credential (American Society of Appraisers), the Accredited in Business Valuation (ABV) credential (American Institute of Certified Public Accountants) and the Chartered Financial Analyst® (CFA) designation awarded by the CFA Institute.</p>\n        \n      <p class='text-muted'>His clients have ranged from single-location family owned/operated furniture manufacturers to large, multi-national bio/pharmaceutical companies, capital intensive oilfield machinery & equipment manufacturers to service oriented enterprises such as architectural/engineering firms and direct-to-consumer housewares brands, and quite a few industries in between.</p>\n        \n      <p class='text-muted'>Outside of his employment as a business valuation specialist, Justin occasionally speaks at University of Houston functions, promoting the university's MS Finance and MBA programs, and discussing careers in realm of financial analysis and business valuation more generally.</p>\n        \n      <p class='text-muted'>Before joining HSSK, Justin worked as a Midstream Analyst for Hart Energy (now Stratas Advisors) and as the Senior Financia
  l Analyst for the U.S.-based transportation company, Trimac Transportation. Prio
  r to his work in the field of finance and analysis, Justin provided engineering
  and graphic design services, with a focus on oil & gas and power-generation faci
  lities.</p>\n        \n      <p class='text-muted'>Justin holds a Master of Scie
  nce degree in Finance from the University of Houston and a Bachelor of Science d
  egree in Economics from Texas A&M University. </p>",
  profile_image_url: "https://www.gordonbrothers.com/wp-content/uploads/2022/08/jramirez_headshot_thumbnail_434.jpg",
  linkedin_url: "https://www.linkedin.com/in/justinjframirez/",
  in_leadership: true
)