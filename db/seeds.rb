Order.delete_all
Order.create!( id: 1, subtotal: 12.00, tax: 0.00, shipping: 10.00, total: 22.00, status: 3)
Order.create!( id: 2, subtotal: 102.00, tax: 0.00, shipping: 22.00, total: 124.00, status: 2)
Order.create!( id: 3, subtotal: 100.00, tax: 7.00, shipping: 10.00, total: 117.00, status: 2)
Order.create!( id: 4, subtotal: 44.00, tax: 0.00, shipping: 10.00, total: 54.00, status: 1)
Order.create!( id: 5, subtotal: 67.32, tax: 0.00, shipping: 22.00, total: 89.32, status: 0)
Order.create!( id: 6, subtotal: 111.00, tax: 7.14, shipping: 10.00, total: 128.14, status: 3)
