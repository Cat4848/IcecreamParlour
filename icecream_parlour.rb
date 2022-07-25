
    #welcome and menu iteration begin
class Icecream
       #menu data begin
    @@icecream_scoop_price = 1.21
    @@extras_item_price = 0.25

    @@menu = {
        strawberry_icecream: @@icecream_scoop_price,
        vanilla_icecream: @@icecream_scoop_price,
        raspberry_icecream: @@icecream_scoop_price,
        chocolate_icecream: @@icecream_scoop_price,
        mint_icecream: @@icecream_scoop_price,
        banana_icecream: @@icecream_scoop_price,
        bubblegum_icecream: @@icecream_scoop_price,
        caramel_icecream: @@icecream_scoop_price
    }

    @@extras = {
        chocolate_flake: 0.25,
        chocolate_dust: 0.25
    }

    @@topping = ["chocolate_syrup", "strawberry_syrup"]
      
        #menu data end

    @@order_summary = []

        def menu_iteration
            puts
            puts
            puts "**************************************"
            puts "Welcome to Rochester Icecream Parlour!"
            puts "**************************************"
            puts
            puts "Here is our menu and prices:"
            puts "----------------------------"
    
            @@menu.select do
                |flavour, price| puts "#{flavour.capitalize}: £#{@@icecream_scoop_price} per scoop."
            end  
            puts "----------------------------"
            puts
  
        end 



        def extras_iteration
            puts "Extras:"

            @@extras.select do
                |flavour, price| puts "#{flavour.capitalize}: £#{price}."
            end
            puts "----------------------------"
            puts
        end  

        def topping_iteration
            puts "Free topping of your choice:"

            @@topping.select do
                |flavour| puts "#{flavour.capitalize}."
            end
            puts "----------------------------"
            puts
        end  

        def health_warning
            puts "--------------------------------------------------------------------------------------------------------------------------------------"
            puts "Please note that we are taking your health very seriously and due to the number of calories, we can only serve you 2 scoops per order."
            puts "--------------------------------------------------------------------------------------------------------------------------------------"
            puts
        end

    #welcome and menu itaration end

    def flavour1_select
        puts "--- Type the name of the first icecream flavour of your choice:"
            @@flavour1 = gets.chomp.downcase
            found1 = false
            @@menu.find {|value|
                found1 = value.to_s.include? @@flavour1
                
            }
            if found1
                @@order_summary.push("#{@@flavour1}_icecream")
               else
                puts "Sorry, we currently don't have that flavour."
                puts "Please select again."
                flavour1_select()               

               end
               
                       
    end
   

    def flavour2_select
            puts
            puts
            puts "--- Now the second icecream flavour of your choice:"
            @@flavour2 = gets.chomp.downcase
            found2 = false

            @@menu.find {|value|
                found2 = value.to_s.include? @@flavour2
            }

                if found2
                    @@order_summary.push("#{@@flavour2}_icecream")
                else
                 puts "Sorry, we currently don't have that flavour."
                 puts "Please select again."
                 flavour2_select()
                end               

    end           
    
            

    def extras_select
        puts
        puts
        puts "Would you like any extras like:"
        extras_iteration()
        puts "Please answer 'yes' or 'no'."
        extras_order_decision = gets.chomp.downcase

        if extras_order_decision == "yes"
            puts
            puts
            puts "--- Type the name of your choice:"
            extras_preference = gets.chomp

            found3 = false

            @@extras.find{|value|
                found3 = value.to_s.include? extras_preference
            }
            if found3
                @@order_summary.push("#{extras_preference}_extra")
            end 
            puts
            puts
            puts "Lastly, please choose your free topping."



        elsif extras_order_decision == "no"
            puts
            puts
            puts "Lastly, please choose your free topping."
        else
            puts "Enter a valid answer: 'yes' or 'no'."
            extras_select()
        end

    end

    def topping_select
        topping_iteration()

        topping_preference = gets.chomp.downcase
        found4 = false
        @@topping.find{|value|
            found4 = value.to_s.include? topping_preference
        }

        if found4
            @@order_summary.push("#{topping_preference}_topping")
        else
            puts "Sorry, we currently don't have that flavour."
            puts "Please select again."
            topping_select()
        end
    end

    def order_iteration
        puts
        puts
        puts "----------------------------"
        puts "You ordered the following:"
        @@order_summary.each{|value|
            puts "*** #{value} ***"

        }
        puts "----------------------------"
        puts
    end

    def icecream_count
        return @@order_summary.count{|value| value.include? "icecream"} * @@icecream_scoop_price
    end

    def extra_count
        return @@order_summary.count{|value| value.include? "extra"} * @@extras_item_price
    end

    def topping_count
        return @@order_summary.count{|value| value.include? "topping"}
    end

end

new_icecream_order = Icecream.new
new_icecream_order.menu_iteration()
new_icecream_order.extras_iteration()
new_icecream_order.topping_iteration()
new_icecream_order.health_warning()
new_icecream_order.flavour1_select()
new_icecream_order.flavour2_select()
new_icecream_order.extras_select()
new_icecream_order.topping_select()
new_icecream_order.order_iteration()

icecream_count_value = new_icecream_order.icecream_count()
extra_count_value = new_icecream_order.extra_count()
topping_count_value = new_icecream_order.topping_count()

total = icecream_count_value + extra_count_value
puts "----------------------------"
puts "Total: £#{total}"
puts "----------------------------"


puts"            .oo."
puts"          oGGGGGGo"
puts"         GGGGGGGGGG"
puts"  .mMMMMMMGGGGGGEEEE="
puts" MMMMMMMMMMMGGEEEEEEEE"
puts" MMMMMMMMMMMNICKEEEEEEEE"
puts" MMMMMMMMMMMMMEEEEEEEEEE"
puts" !MMMMMMMMMMMOOEEEEEEEE"
puts" MMM!MMMMMMOOOOOOE!="
puts"  MM!!!!!!!!!!!!!!!"
puts"   MM!!!!!!!!!!!!!"
puts"   !M!!!!!!!!!!!!!"
puts"    MM!!!!!!!!!!!"
puts"    MM!!!!!!!!!!!"
puts"    !  !!!!!!!!!"
puts"    .  !!!!!!!!!"
puts"        !!!!!!!"
puts"        !!!!!!!"
puts"         !!!!!"
puts"         !!!!!"
puts"          !!!"
puts"          !!!"
puts"           !!"
puts"           !" 


















