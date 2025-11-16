# pcb_defects_detection
MATLAB-based automated PCB defect detection system using image registration, image subtraction, and morphological analysis to identify missing holes and classify PCB quality.

**PROJECT DESCRIPTION**

**Summary**


This project builds an automatic PCB defect detection system using MATLAB image processing techniques. A template PCB image, free of defects, is compared with a test PCB to identify missing holes, open circuits, and short circuits. The system uses traditional image-processing methods, without any machine learning or training data, to find real structural defects and highlight them on the PCB image with red bounding boxes. The project also creates a binary defect mask and offers an automatic PASS/FAIL decision based on the number of defects found.

**Course Concepts Used**

-Grayscale image conversion

_Image resizing and sampling

-Noise removal

-Image registration 

-Absolute difference image computation

-Adaptive thresholding

-Morphological operations

-Connected component analysis

-Feature extraction

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

**Steps**

1. Clone Repository
   
git clone https://github.com/DIP-2025-MINI-PROJECT/pcb_defects_detection.git

3. Install Dependencies

MATLAB R2022a or above

Image Processing Toolbox

3. Run the Code

Open MATLAB → run the main script:

pcb_defect_detection.m

**Outputs**

-Grayscale conversion of template and test images

-Noise removal using Wiener filtering

-Image registration (alignment using similarity transform)

-Absolute difference image

-Adaptive thresholding and binary mask

-Morphological operations to clean noise

**Final Output**

-Defect mask showing missing holes / open circuits / short circuits

-Red bounding boxes marking defect locations on the color PCB image

-Automatic PASS / FAIL classification

-Defect count displayed in the output window

**Limitations**

*The system relies on a template image, so even small misalignment or lighting variations can affect detection accuracy.

*Performance depends heavily on the quality and resolution of PCB images.

*Only structural defects detectable through image differences can be identified; defects like component polarity mistakes or microscopic cracks may not be detected.

*Sensitivity values for thresholding may require manual tuning for different PCB datasets.

*The approach assumes PCBs are placed in a uniform orientation; extreme rotation or perspective distortion reduces accuracy.

**Future Work**

*Integrating automatic rotation correction using advanced feature matching (SIFT/SURF).

*Improving robustness by adding illumination normalization or HDR preprocessing.

*Extending the system to detect more complex defects such as component issues or solder bridges.

*Creating a more intelligent classifier using machine learning or deep learning to handle varied PCB designs.

*Adding a real-time camera-based inspection system for industrial use.

*Developing a full GUI for easy operator use and quick batch processing.

**References:**

[1] S. S. Shinde, S. A. Wankhede, S. G. Shete, and M. G. Chinchole, “PCB Fault
Detection Using Image Processing in MATLAB,” IOSR Journal of Engineering, pp.
61–65, MOMENTUM-19, 2019.

[2] I. Ibrahim, S. A. Rahman, and S. A. Bakar, “Printed Circuit Board Inspection
System with Defect Classification Capability,” International Journal of Innovative
Management, Information & Production, 2012.

[3] B. Zitová and J. Flusser, “Image Registration Methods: A Survey,” Image and
Vision Computing, vol. 21, pp. 977–1000, 2003.

[4] H. Rau and C. H. Wu, “Automatic Optical Inspection for Detecting Defects on
Printed Circuit Board Inner Layers,” International Journal of Advanced
Manufacturing Technology, vol. 25, no. 9–10, pp. 940–946, 2005.

[5] R. C. Gonzalez and R. E. Woods, Digital Image Processing, 4th ed. Pearson,
2018.

[6] S. Jayaraman, S. Esakkirajan, and T. Veerakumar, Digital Image Processing.
McGraw-Hill Education, 2011.

[7] MathWorks, “Image Processing Toolbox Documentation,”
