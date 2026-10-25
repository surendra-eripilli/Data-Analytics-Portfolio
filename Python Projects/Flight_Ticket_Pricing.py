
name = input("Enter passenger name: ")
age = int(input("Enter passenger age: "))

print("\nSelect Travel Class")
print("1. Economy")
print("2. Business")
print("3. First Class")

class_choice = int(input("Enter your choice: "))

if class_choice == 1:
    travel_class = "Economy"
    original_price = 8000.0
elif class_choice == 2:
    travel_class = "Business"
    original_price = 15000.0
elif class_choice == 3:
    travel_class = "First Class"
    original_price = 25000.0
else:
    print("Invalid travel class!")
    exit()

print("\nSelect Season")
print("1. Normal")
print("2. Peak")

season_choice = int(input("Enter season: "))

if season_choice == 1:
    season = "Normal Season"
elif season_choice == 2:
    season = "Peak Season"
else:
    print("Invalid season!")
    exit()

available_seats = int(input("\nEnter available seats: "))

if age < 12:
    category = "Child"
elif age >= 60:
    category = "Senior Citizen"
else:
    category = "Adult"

discount = 0

if age >= 60:
    discount = original_price * 0.20
elif age < 12:
    discount = original_price * 0.50

if season_choice == 2:
    original_price = original_price * 1.20

if age >= 60:
    discount = original_price * 0.20
elif age < 12:
    discount = original_price * 0.50

final_price = original_price - discount

if available_seats > 0:
    seat_status = "Available"
    booking_status = "BOOKING SUCCESSFUL"
else:
    seat_status = "Not Available"
    booking_status = "BOOKING FAILED"

#To Display ticket
print("\n====================================")
print("          FLIGHT TICKET")
print("====================================")
print("Passenger Name :", name)
print("Age            :", age)
print("Category       :", category)
print("Travel Class   :", travel_class)
print("Season         :", season)
print("Original Price :", original_price)
print("Discount       :", discount)
print("Final Price    :", final_price)
print("Seat Status    :", seat_status)
print("====================================")
print("      ", booking_status)
print("====================================")