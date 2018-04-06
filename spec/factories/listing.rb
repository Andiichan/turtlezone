FactoryBot.define do
  factory :listing do
    name "A listing"
    description "A description which is definitely helpful"
  end

  factory :second_listing, class: "Listing" do
    name "A listing"
    description "A description which is definitely helpful"
  end
end
