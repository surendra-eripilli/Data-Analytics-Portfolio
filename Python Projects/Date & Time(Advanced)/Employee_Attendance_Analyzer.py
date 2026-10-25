import csv
from datetime import datetime

filename = "attendance.csv"

employees = {}

with open(filename, "r") as file:

    reader = csv.DictReader(file)

    for row in reader:

        employee = row["employee"]

        login = datetime.strptime(row["login"], "%H:%M")
        logout = datetime.strptime(row["logout"], "%H:%M")

        #To calculate working hours
        working_hours = (logout - login).total_seconds() / 3600

        #To create employee record
        if employee not in employees:
            employees[employee] = {
                "days": 0,
                "total_hours": 0,
                "late_days": 0,
                "short_days": 0,
                "earliest_login": login,
                "latest_logout": logout
            }

        data = employees[employee]

        # Total working days
        data["days"] += 1

        # Total hours
        data["total_hours"] += working_hours

        # Late if login after 09:00
        official_login = datetime.strptime("09:00", "%H:%M")

        if login > official_login:
            data["late_days"] += 1

        # Working less than 8 hours
        if working_hours < 8:
            data["short_days"] += 1

        # Earliest login
        if login < data["earliest_login"]:
            data["earliest_login"] = login

        # Latest logout
        if logout > data["latest_logout"]:
            data["latest_logout"] = logout


#To display results
for employee, data in employees.items():

    average_hours = data["total_hours"] / data["days"]

    print("\nEmployee:", employee)
    print("Total working days:", data["days"])
    print("Average working hours:", round(average_hours, 2))
    print("Days late:", data["late_days"])
    print("Days < 8 hours:", data["short_days"])
    print("Earliest login:", data["earliest_login"].strftime("%H:%M"))
    print("Latest logout:", data["latest_logout"].strftime("%H:%M"))