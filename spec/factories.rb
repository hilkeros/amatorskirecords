#By using the symbol ':order', we get Factory Girl to simulate the Order model.

Factory.define :order do |order|
  order.first_name          "Hilke"
  order.last_name           "Ros"
  order.email               "hilkeros@gmail.com"
  order.street              "Holstraat"
  order.street_number       "55"
  order.box_number          "14F"
  order.zipcode             "9000"
  order.city                "Gent"
  order.country             "Belgium"
  order.pay_type            "bank transfer"
  order.amount              "2"
end