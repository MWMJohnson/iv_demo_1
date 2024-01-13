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
  office_phone: "555-555-5555",
  bio: "      <p>Justin Ramirez serves as the CEO and Founder of Insight Valuations LLC, leveraging almost a decade of experience in business valuations and analysis across diverse industries. In this capacity, he specializes in managing business valuations and intangible asset appraisals, catering to corporate and ownership requirements such as financial reporting, mergers and acquisitions, corporate planning, and estate and gift tax management.</p>\n    \n      <p>Before founding Insight Valuations LLC, Justin has held multiple senior positions in the Business Valuation Industry, conducting fair value and fair market value engagements for both public and private entities.</p>\n        \n      <p>Justin's academic background is rooted in a Bachelor of Science in Economics with a minor in Business Administration from Texas A&M University. He furthered his education by obtaining a Master of Science in Finance and a certificate in Financial Services Management from the University of Houston.</p>\n        \n      <p>Holding esteemed accreditations, Justin is recognized as an Accredited Senior Appraiser by the American Society of Appraisers and accredited in business valuation by the American Institute of Certified Public Accountants (AICPA).</p>\n        \n      <p>Justin is an active member of prominent industry organizations, including the American Society of Appraisers, AICPA, CFA Institute, and CFA Society of Houston. Currently based in Houston, he brings a wealth of expertise to his role as the CEO and Founder of Insight Valuations LLC.</p>",
  profile_image_url: "https://www.gordonbrothers.com/wp-content/uploads/2022/08/jramirez_headshot_thumbnail_434.jpg",
  linkedin_url: "https://www.linkedin.com/in/justinjframirez/",
  in_leadership: true
)