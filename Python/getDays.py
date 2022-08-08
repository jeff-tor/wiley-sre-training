import time

a=float(input("Enter number of days:"))

1_day_value = a * 86400 

converted_datetime = str(time.strftime("%H:%M:%S", time.gmtime(1_day_value)))

print("converted results are: ", converted_datetime)
