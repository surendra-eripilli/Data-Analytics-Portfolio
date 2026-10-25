from datetime import date

dob = date(2000, 2, 29)
today = date.today()

# Calculate years
years = today.year - dob.year

birthday_this_year = date(today.year, 2, 28)

if today < birthday_this_year:
    years -= 1

# Calculate the date after subtracting years
try:
    birth_anniversary = date(dob.year + years, dob.month, dob.day)
except ValueError:
    # February 29 in a non-leap year
    birth_anniversary = date(dob.year + years, 2, 28)

# Calculate remaining months and days
months = 0
current = birth_anniversary

while True:

    if current.month == 12:
        next_month = date(current.year + 1, 1, current.day)
    else:
        # Find valid day for next month
        next_month_number = current.month + 1

        try:
            next_month = date(
                current.year,
                next_month_number,
                current.day
            )
        except ValueError:
            # If day doesn't exist, use last day of month
            if next_month_number == 2:
                next_month = date(current.year, 2, 28)
            else:
                next_month = date(
                    current.year,
                    next_month_number,
                    30
                )

    if next_month <= today:
        current = next_month
        months += 1
    else:
        break

days = (today - current).days

# Total days lived
total_days = (today - dob).days

# Next birthday
next_birthday_year = today.year

try:
    next_birthday = date(next_birthday_year, 2, 29)

    if next_birthday <= today:
        next_birthday = date(next_birthday_year + 1, 2, 29)

except ValueError:
    next_birthday = date(next_birthday_year, 2, 28)

    if next_birthday <= today:
        next_birthday = date(next_birthday_year + 1, 2, 28)

days_until = (next_birthday - today).days


print("Date of Birth:", dob)
print("Today:", today)

print("\nAge:-")
print("Years :", years)
print("Months:", months)
print("Days  :", days)

print("\nTotal days lived:", total_days)

print("\nNext birthday:", next_birthday)
print("Days until next birthday:", days_until)