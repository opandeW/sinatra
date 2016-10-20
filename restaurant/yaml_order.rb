require 'order'
require 'yaml/store'

store = YAML::Store.new('order.yml')

first_order = Orders.new
first_order.table_no = "One"
first_order.waiter_name = "Manyani"
first_order.order = "Achwaka"

second_order = Orders.new
second_order.table_no = "Two"
second_order.waiter_name = "Ajeni"
second_order.order = "Orenge"

store.transaction do
	store["One"] = first_order
	store["Two"] = second_order

	p store["Two"]
end