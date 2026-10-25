import cv2

# Load the AI face detector
face_cap = cv2.CascadeClassifier(
    cv2.data.haarcascades + "haarcascade_frontalface_default.xml"
)

# Start webcam
video = cv2.VideoCapture(0)

while True:
    ret, frame = video.read()
    
    # To Convert to gray
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    
    # To Detect faces
    faces = face_cap.detectMultiScale(gray, 1.1, 4)
    
    # To Draw rectangles around each face
    for (x, y, w, h) in faces:
        cv2.rectangle(frame, (x, y), (x+w, y+h), (0, 255, 0), 2)
    
    # To Show video on the screen
    cv2.imshow("Face Detection", frame)
    
    #To quit the detection afterr pressing 'y'
    if cv2.waitKey(1) == ord('y'):
        break

video.release()
cv2.destroyAllWindows()




















