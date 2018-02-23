# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

from PIL import Image
import matplotlib.pyplot as plt
import numpy as np

width = 998
height = 660

img_rgb = Image.open('/home/gfoudree/Desktop/test2.png')
#img = img_rgb.convert('LA')
img = img_rgb

greyscale = np.array(img) #[row, col, data]
converted = np.zeros((height, width, 3), dtype=np.uint8) #(r,g,b)

greyscale = np.delete(greyscale, 0, 0)

for col in range(1, width-2):
    for row in range(1, height-2):
        dim = None
        red_avg = 0
        blue_avg = 0
        green_avg = 0
        
        if row == 0:
            if col == 0: #Top left square
                green_avg = round((greyscale[row, col, 0].astype(int) + greyscale[row+1, col+1, 0].astype(int))/2)
                blue_avg = greyscale[row+1, col, 0].astype(int)
                red_avg = greyscale[row, col+1, 0].astype(int)
            else:
                if col % 2 == 0: #Green px
                    blue_avg = greyscale[row+1, col, 0].astype(int)
                    green_avg = round((greyscale[row+1, col+1, 0].astype(int) + greyscale[row, col, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int))/3)
                    red_avg = round((greyscale[row, col+1, 0].astype(int) + greyscale[row, col-1, 0].astype(int))/2)
                else:
                    red_avg = greyscale[row, col, 0].astype(int)
                    blue_avg = round((greyscale[row+1, col+1, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int))/2)
                    green_avg = round((greyscale[row, col-1, 0].astype(int) + greyscale[row, col+1, 0].astype(int) + greyscale[row+1, col, 0].astype(int))/3)
        elif row == width:
            None
        elif col == 0:
            None
        elif col == height:
            None
        else:
            if row % 2 == 0 and col % 2 == 0:
                dim = 1 # green
                blue_avg = round((greyscale[row+1, col, 0].astype(int) + greyscale[row-1, col, 0].astype(int))/2)
                red_avg = round((greyscale[row, col+1, 0].astype(int) + greyscale[row, col-1, 0].astype(int))/2)
                green_avg = round((greyscale[row, col, 0].astype(int) + greyscale[row+1, col+1, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int) + greyscale[row-1, col-1, 0].astype(int) + greyscale[row-1, col+1, 0].astype(int))/5)
            elif row % 2  == 0 and col % 2 == 1:
                dim = 0 # red
                blue_avg = round((greyscale[row+1, col+1, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int) + greyscale[row-1, col-1, 0].astype(int) + greyscale[row-1, col+1, 0].astype(int))/4)
                red_avg = greyscale[row, col, 0].astype(int)
                green_avg = round((greyscale[row+1, col, 0].astype(int) + greyscale[row-1, col, 0].astype(int) + greyscale[row, col+1, 0].astype(int) + greyscale[row, col-1, 0].astype(int))/4)
            elif row % 2 == 1 and col % 2 == 0:
                dim = 2 # blue
                blue_avg = greyscale[row, col, 0].astype(int)
                red_avg = round((greyscale[row+1, col+1, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int) + greyscale[row-1, col-1, 0].astype(int) + greyscale[row-1, col+1, 0].astype(int))/4)
                green_avg = round((greyscale[row+1, col, 0].astype(int) + greyscale[row-1, col, 0].astype(int) + greyscale[row, col+1, 0].astype(int) + greyscale[row, col-1, 0].astype(int))/4)
            else:
                dim = 1 # green
                red_avg = round((greyscale[row+1, col, 0].astype(int) + greyscale[row-1, col, 0].astype(int))/2)
                blue_avg = round((greyscale[row, col+1, 0].astype(int) + greyscale[row, col-1, 0].astype(int))/2)
                green_avg = round((greyscale[row, col, 0].astype(int) + greyscale[row+1, col+1, 0].astype(int) + greyscale[row+1, col-1, 0].astype(int) + greyscale[row-1, col-1, 0].astype(int) + greyscale[row-1, col+1, 0].astype(int))/5)
        
        converted[row, col, 0] = np.uint8(red_avg)
        converted[row, col, 1] = np.uint8(green_avg)
        converted[row, col, 2] = np.uint8(blue_avg)

z = Image.fromarray(converted)
test_img = np.full((1080, 1920, 3), (255, 155, 244), dtype=np.uint8)
plt.imshow(converted)
plt.show()