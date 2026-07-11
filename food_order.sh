#!/bin/bash

# Online Food Order Validation System

food=$1
quantity=$2

# Validate command-line arguments
if [ $# -ne 2 ]
then
    echo "Usage: ./food_order.sh <FoodItem> <Quantity>"
    exit 1
fi

# Validate food item and set price
case $food in
    Pizza)
        price=200
        ;;
    Burger)
        price=150
        ;;
    Biryani)
        price=250
        ;;
    *)
        echo "Invalid Food Item"
        exit 1
        ;;
esac

# Check quantity
if [ $quantity -lt 1 ] || [ $quantity -gt 10 ]
then
    echo "Quantity should be between 1 and 10"
    exit 1
fi

# Calculate total amount
total=$((price * quantity))

# Apply delivery charge
if [ $total -ge 1000 ]
then
    delivery=0
else
    delivery=50
fi

final=$((total + delivery))

# Display order summary
echo "-----------------------------"
echo "Online Food Order Summary"
echo "-----------------------------"
echo "Food Item      : $food"
echo "Quantity       : $quantity"
echo "Price per Item : Rs.$price"
echo "Order Amount   : Rs.$total"
echo "Delivery Charge: Rs.$delivery"
echo "Final Amount   : Rs.$final"
