# enums

Enums are often recommended as a way to represent status fields.  Here the status of a sales order is represented by enums instead of  a lookup table.    Enums are implemented with Rails Active Record and have been available since Rails 4.1.

In the example produced by this repo, each of the order statuses is represented by an enum.

![Example](https://github.com/veronicacannon/enums/blob/master/doc/example.PNG?raw=true "Example")


## instructions for quick demo
1. Create a Rails 4.1 app
2. Create a model

    ```
    rails g model Order subtotal:decimal{11,2} tax:decimal{11,2} shipping:decimal{11,2} status:integer
    ```
    
3. Add enum to model

    ```
    class Order < ActiveRecord::Base
        enum status: [ :cancelled, :in_progress, :completed, :invoiced ]
    end
    ```

4. Run rails console

5. Show all statuses

    ```
    Order.statuses #=> {"cancelled"=>0, "in_progress"=>1, "completed"=>2, "invoiced"=>3}

6. Create new order

    ```
    Order.create!( subtotal: 12.00, tax: 0.00, shipping: 10.00, status: 3)
    ```

7. Show order status

    ```
    o = Order.last
    o.status  #=> invoiced
    ```

8. Check and set order status

    ```
    o.invoiced? #=> true
    o.completed!
    ```

## noteworthy
Add 'humanize' to a enum value for display purposes, invoiced becomes Invoiced. 

    order.status.humanize

Use status for css class.  This example colors displayed status to help comprehension. 

    class = "order-status-<%= order.status %>"

## references

[Rich On Rails Tutorial](https://richonrails.com/articles/active-record-enums-in-ruby-on-rails-4-1)
[Booleans and Enums](https://robots.thoughtbot.com/booleans-and-enums)
