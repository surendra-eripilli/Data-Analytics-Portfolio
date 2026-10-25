from datetime import datetime, timedelta

start_date = input("Enter start date (YYYY-MM-DD): ")
end_date = input("Enter end date (YYYY-MM-DD): ")
holidays = ["2026-09-05", "2026-09-17"]

start = datetime.strptime(start_date, "%Y-%m-%d").date()
end = datetime.strptime(end_date, "%Y-%m-%d").date()

#To handle reversed dates
if start > end:
    start, end = end, start

holiday_dates = {
    datetime.strptime(day, "%Y-%m-%d").date()
    for day in holidays
}

working_days = 0
current_date = start

while current_date <= end:

    # weekday(): Monday = 0, Sunday = 6
    if current_date.weekday() < 5 and current_date not in holiday_dates:
        working_days += 1

    current_date += timedelta(days=1)

print("Working days =", working_days)