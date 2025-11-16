# pcb_defects_detection
MATLAB-based automated PCB defect detection system using image registration, image subtraction, and morphological analysis to identify missing holes and classify PCB quality.

Project Description
This project builds an automatic PCB defect detection system using MATLAB image processing techniques. A template PCB image, free of defects, is compared with a test PCB to identify missing holes, open circuits, and short circuits. The system uses traditional image-processing methods, without any machine learning or training data, to find real structural defects and highlight them on the PCB image with red bounding boxes. The project also creates a binary defect mask and offers an automatic PASS/FAIL decision based on the number of defects found.
