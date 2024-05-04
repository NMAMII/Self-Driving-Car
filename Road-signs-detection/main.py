from ultralytics import YOLO
import cv2
import cvzone
import math
import time
# import RPi.GPIO as GPIO
import threading
# GPIO.setmode(GPIO.BOARD)

stop_pin = 11
move_pin = 13

cap = cv2.VideoCapture("vi.mp4")  # 0 For Webcam
cap.set(3, 480)
cap.set(4, 360)
model = YOLO("best_f.pt")
class_labels = model.names

# bound box colors
colorR = (0, 0, 205)  # Red background rectangle
colorT = (255, 255, 255)  # White text
colorB = (0, 0, 205)  # Green text inside the rectangle

# Print the class labels
print(class_labels)
output_dict = {0: 'Green Light', 1: 'Red Light', 2: 'Speed Limit 10',
               3: 'Speed Limit 100', 4: 'Speed Limit 110', 5: 'Speed Limit 120',
               6: 'Speed Limit 20', 7: 'Speed Limit 30', 8: 'Speed Limit 40',
               9: 'Speed Limit 50', 10: 'Speed Limit 60', 11: 'Speed Limit 70',
               12: 'Speed Limit 80', 13: 'Speed Limit 90', 14: 'Stop'}

# Extract the value names into a list
color_list = list(output_dict.values())

prev_frame_time = 0
new_frame_time = 0


# def hold_output_for_stop():
#     GPIO.output(stop_pin, GPIO.HIGH)
#     time.sleep(5)  # Hold the output high for 5 seconds
#     GPIO.output(stop_pin, GPIO.LOW)  # Turn off the output after 5 seconds
#
#
# def hold_output_for_move():
#     GPIO.output(move_pin, GPIO.HIGH)
#     time.sleep(5)  # Hold the output high for 5 seconds
#     GPIO.output(move_pin, GPIO.LOW)  # Turn off the output after 5 seconds


while True:
    new_frame_time = time.time()
    success, img = cap.read()
    results = model(img, stream=True)
    for r in results:
        boxes = r.boxes
        for box in boxes:
            # Bounding Box
            x1, y1, x2, y2 = box.xyxy[0]
            x1, y1, x2, y2 = int(x1), int(y1), int(x2), int(y2)
            # cv2.rectangle(img,(x1,y1),(x2,y2),(255,0,255),3)
            w, h = x2 - x1, y2 - y1
            cvzone.cornerRect(img, (x1, y1, w, h))
            # Confidence
            conf = math.ceil((box.conf[0] * 100)) / 100
            # Class Name
            cls = int(box.cls[0])

            cvzone.putTextRect(img, f'{color_list[cls]} {conf}', (max(0, x1), max(35, y1)), scale=1.25,
                               thickness=2, colorR=colorR, colorB=colorB, colorT=colorT)

            # # Function to hold the output high for 5 seconds
            # if color_list[cls] == "Red Light" or color_list[cls] == "Stop":
            #     # Start a new thread to hold the output high for 5 seconds
            #     output_thread = threading.Thread(target=hold_output_for_stop)
            #     output_thread.start()
            #
            # if color_list[cls] == "Green Light":
            #     output_thread = threading.Thread(target=hold_output_for_move)
            #     output_thread.start()

    fps = 1 / (new_frame_time - prev_frame_time)
    prev_frame_time = new_frame_time
    print(fps)
    cv2.imshow("Image", img)
    cv2.waitKey(1)
    # Break the loop if 'q' key is pressed
    if cv2.waitKey(25) & 0xFF == ord('q'):
        break
