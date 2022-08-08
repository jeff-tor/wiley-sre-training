first_name=str(input("enter your first name:").capitalize())
last_name=str(input("enter your last name:").capitalize())
city=str(input("enter your current city of residence:").capitalize())
hourly_wage=float(input("enter your hourly wage:"))
weekly_hours=float(input("enter your weekly working hours:"))
dollars_weekly=hourly_wage * weekly_hours
dollars_monthly= dollars_weekly * 4 
dollars_yearly= dollars_monthly * 12

print(f"Hi, {first_name} {last_name}! How are you? I hope the weather is nice in {city}. Based on the information you provided, you earn {dollars_weekly}, {dollars_monthly} per month, {dollars_yearly} per year.")
