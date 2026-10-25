from tkinter import *
import datetime
import time
import winsound
def alarm(set_alarm_timer):
    while True:
        time.sleep(1)

        current_time = datetime.datetime.now()
        now = current_time.strftime("%H:%M:%S")
        date = current_time.strftime("%d/%m/%Y")

        print("The Set Date is:", date)
        print(now)

        if now == set_alarm_timer:
            print("Time to Wake up")
            winsound.PlaySound("sound.wav", winsound.SND_ASYNC)
            break

def actual_time():
    set_alarm_timer = f"{hour.get()}:{min.get()}:{sec.get()}"
    alarm(set_alarm_timer)

#GUI
clock = Tk()
clock.title("DataFlair Alarm Clock")
clock.geometry("400x200")
time_format = Label(
    clock,
    text="Enter time in 24 hour format!",
    fg="red",
    bg="black",
    font="Arial"
)
time_format.place(x=60, y=120)
addTime = Label(
    clock,
    text="Hour Min Sec",
    font=60
)
addTime.place(x=110)
setYourAlarm = Label(
    clock,
    text="When to wake you up",
    fg="blue",
    relief="solid",
    font=("Helvetica", 7, "bold")
)
setYourAlarm.place(x=0, y=29)

#Given Variables
hour = StringVar()
min = StringVar()
sec = StringVar()

#Boxes for inputs
hourTime = Entry(
    clock,
    textvariable=hour,
    bg="pink",
    width=15
)
hourTime.place(x=110, y=30)
minTime = Entry(
    clock,
    textvariable=min,
    bg="pink",
    width=15
)
minTime.place(x=150, y=30)
secTime = Entry(
    clock,
    textvariable=sec,
    bg="pink",
    width=15
)
secTime.place(x=200, y=30)

#To set the Alarm Button
submit = Button(
    clock,
    text="Set Alarm",
    fg="red",
    width=10,
    command=actual_time
)
submit.place(x=110, y=70)
clock.mainloop()
























