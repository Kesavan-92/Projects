import random
otp=random.randint(0000000,1000000)

print("Welcome to Bus ticket booking")
print("1.Chennai to Madurai")
print("2.Madurai to Chennai")
print("3.Chennai to Bangalore")
print("4.Bangalore to Chennai")
i=int(input("Enter your choice to select route:"))
j=str(input("Enter date of journey:"))
def bus():
  if(i==1 or i==2 or i==3 or i==4):
      b1="Intercity"
      b2="SRS"
      b3="YBM"
      b4="Parveen"
      print("1.",b1)
      print("2.",b2)
      print("3.",b3)
      print("4.",b4)
      bus=int(input("Please select bus:"))
      if(bus==1):
        bus=b1;
      elif(bus==2):
        bus=b2;
      elif(bus==3):
        bus=b3;
      elif(bus==4):
        bus=b4;
      print("\nSelect your time to travel")
      t1="06:00 AM"
      t2="10:00 PM"
      t3="12:00 PM"
      t4="03:00 PM"
      t5="06:00 PM"
      t6="08:00 PM"
      print("1.",t1)
      print("2.",t2)
      print("3.",t3)
      print("4.",t4)
      print("5.",t5)
      print("6.",t6)
      time=int(input("Please Select Time:"))
      if(time==1):
        time=t1;
      elif(time==2):
        time=t2;
      elif(time==3):
        time=t3;
      elif(time==4):
        time=t4;
      elif(time==5):
        time=t5;
      elif(time==6):
        time=t6;
      else:
        Print("Invalid time selection")
      
      n=int(input("No.of tickets:"))
      def details():
        f=str(input("Enter your contact number:"))
        for m in range(n):
          s=int(input("\nEnter your seat number:"))
          if(s>0):
            #print("your seat.No is:",s)
            c=str(input("Enter name:"))
            d=int(input("Enter age:"))
            e=str(input("Gender:"))
          else:
            print("Please select atleast one seat")
        print("Your OTP is-",otp)
        x=(input("Please Enter OTP:"))
        if(x==str(otp)):
                print("\nOTP verified")
                pay=600
                rate=n*pay
        
                if(rate):
                      print("\n***Your journey details are below***")
                      print("\nName:",c)
                      print("Age:",d)
                      print("Gender:",e)
                      print("Bus name:",bus)
                      print("Departure time:",time)
                      print("Seat Number:",s)
                      print("Date of journey:",j)
                      print("No.of tickets:",n)
                      print("Total amount:",rate+(35*n))

                      print("\n***your ticket is booked***")
        

        elif(x!=str(otp)):
                      print("Invalid OTP")
                      print("Please try again")
        
      details()
      
                        
bus()
