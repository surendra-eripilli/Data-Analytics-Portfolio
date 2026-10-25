def is_leap_year(year):
    if year % 400 == 0:
        return True
    if year % 100 == 0:
        return False
    if year % 4 == 0:
        return True
    return False

def days_in_month(year, month):
    if month == 2:
        if is_leap_year(year):
            return 29
        else:
            return 28
    if month in [4, 6, 9, 11]:
        return 30

    return 31

date1 = input("Enter first date (YYYY-MM-DD): ")
date2 = input("Enter second date (YYYY-MM-DD): ")

y1, m1, d1 = map(int, date1.split("-"))
y2, m2, d2 = map(int, date2.split("-"))

#To make sure date1 is earlier
if (y1, m1, d1) > (y2, m2, d2):

    y1, y2 = y2, y1
    m1, m2 = m2, m1
    d1, d2 = d2, d1

#Calculate years
years = y2 - y1

#Calculate months
months = m2 - m1

#Calculate days
days = d2 - d1

#To borrow from month if days are negative
if days < 0:

    months -= 1
    # Previous month
    previous_month = m2 - 1
    previous_year = y2
    if previous_month == 0:
        previous_month = 12
        previous_year -= 1
    days += days_in_month(previous_year, previous_month)

#To borrow from year if months are negative
if months < 0:

    years -= 1
    months += 12

print("\nDifference:")
print("Years  :", years)
print("Months :", months)
print("Days   :", days)