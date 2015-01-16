import os
from os.path import join
from collections import OrderedDict

templateFile = open('../MaterialDesignIcons/template.xml', 'w')

file1 = open('part1.txt', 'r')
for line in file1:
    templateFile.write(line),
file1.close()

icons_path = "../MaterialDesignIcons/root/material-design-icons"
walk = os.listdir(icons_path)
onlydirs = [f for f in walk if os.path.isdir(join(icons_path, f))]

# This line may be optional - if get error "ValueError: list.remove(x): x not in list" then comment it out
# onlydirs.remove(".git")
onlydirs.remove("sprites")

for category in onlydirs:
    print category
    walkdir = os.listdir(icons_path + '/' + category + "/svg/design")
    walkdirremovedsvgbit = []
    for dir2 in walkdir:
        walkdirremovedsvgbit.append(dir2[:-9])
    walkdirset = list(OrderedDict.fromkeys(walkdirremovedsvgbit))

    for image_name in walkdirset:
        templateFile.write(
            '        <option id="' + category + "/" + image_name + '">' + category + "/" + image_name + '</option>\n')

file2 = open('part2.txt', 'r')
for line in file2:
    templateFile.write(line),
file2.close()

for color in ["black", "grey600", "white"]:

    for category in onlydirs:
        print category
        walkdir = os.listdir(icons_path + '/' + category + "/svg/design")
        walkdirremovedsvgbit = []
        for dir2 in walkdir:
            walkdirremovedsvgbit.append(dir2[:-9])
        walkdirset = list(OrderedDict.fromkeys(walkdirremovedsvgbit))

        for image_name in walkdirset:
            templateFile.write(
                '        <thumb color="' + color + '" asset="' + category + "/" + image_name + '">root/material-design-icons/' + category + '/drawable-xxxhdpi/' + image_name + '_' + color + '_48dp.png</thumb>\n')

file3 = open('part3.txt', 'r')
for line in file3:
    templateFile.write(line),
file3.close()

templateFile.close()