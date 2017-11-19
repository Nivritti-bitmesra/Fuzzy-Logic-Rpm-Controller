# Fuzzy-Logic-Rpm-Controller
A controller designed to take room temperature as input and gives the fan speed as output.\
Fuzzy Inference System (FIS) is the process of formulating the mapping from a given
input to an output using fuzzy logic. Fuzzy inference systems have been successfully
applied in fields such as automatic control, data classification, decision analysis, expert
systems, and computer vision. There are two types of fuzzy inference systems that
can be implemented Mamdani-type and Sugeno-type. In this project the Mamdani type
FIS is used that requires finding the centroid of a two-dimensional shape by integrating
across a continuously varying function.\
## General Fuzzy Logic Controller Block Diagram
![index](https://user-images.githubusercontent.com/15217992/32987386-58c904ae-cd10-11e7-9739-ae7b08b3ff71.png)\

Traingular Membership functions were used both for the input and the output signal (See Fig).

![screenshot from 2017-11-19 10-08-40](https://user-images.githubusercontent.com/15217992/32987437-bc22feaa-cd11-11e7-9456-02bf33f575c0.png)\
Where temparature is in Deg Celsius and Fan speed in Rotations per Minute(RPM).

## The input vs output variation of the system is shown below.
![1](https://user-images.githubusercontent.com/15217992/32987449-37f01c8e-cd12-11e7-8e5c-11b17527de62.png)

Programming Language:- MATLAB.
