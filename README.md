# pcb_defects_detection
MATLAB-based automated PCB defect detection system using image registration, image subtraction, and morphological analysis to identify missing holes and classify PCB quality.

**PROJECT DESCRIPTION**

**Summary**


This project builds an automatic PCB defect detection system using MATLAB image processing techniques. A template PCB image, free of defects, is compared with a test PCB to identify missing holes, open circuits, and short circuits. The system uses traditional image-processing methods, without any machine learning or training data, to find real structural defects and highlight them on the PCB image with red bounding boxes. The project also creates a binary defect mask and offers an automatic PASS/FAIL decision based on the number of defects found.

**Course Concepts Used**

-Digital Image Processing

-Grayscale conversion

-Image resizing and normalization

-Noise reduction (Wiener filtering)

-Morphological operations

-Connected component analysis

-Feature extraction (area, perimeter, circularity)

**Additional Concepts Used**

-Image registration using similarity transform

-Absolute difference image computation

-Adaptive thresholding

-Defect classification based on geometric properties

-Bounding-box defect visualization

-PASS/FAIL quality classification

**Dataset**

The dataset consists of:

A set of template (defect-free) PCB images

Corresponding defective PCB images with missing holes, open circuits, and short circuits

These images were selected and organized manually to test multiple defect types.

**Links**

All PCB images used in this project were collected from the Kaggle dataset:
PCB-Defects by akhatova

The dataset was downloaded and then organized locally for experimentation and defect detection.

**Novelty**

The project detects multiple PCB defects, including missing holes, open circuits, and short circuits, using only classic image-processing techniques. It does this without any machine learning model or training data. The pipeline employs precise image registration, difference imaging, adaptive thresholding, and geometric analysis to achieve reliable defect detection in a simple, fast, and cost-effective way. This makes the approach lightweight and easy to use in real-world inspection environments.

**Contributors:**
1.Tanmayi MK(PES1UG23EC324)
2.K Shrimanth Raj (PES1UG23EC139)
3.Kshmya Panchal(PES1UG23EC152)
