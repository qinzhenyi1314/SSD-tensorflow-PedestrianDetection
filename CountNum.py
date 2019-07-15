from __future__ import division
import os
import xml.dom.minidom

DIRECTORY_ANNOTATIONS = 'Annotations/'
DIRECTORY_IMAGES = 'JPEGImages/'
DIRECTORY_MAIN = 'ImageSets/Main/train.txt'
dataset_dir = './data/VOC2007/'
path = os.path.join(dataset_dir,DIRECTORY_MAIN)
with open(path) as f:
    lines = f.readlines()
filenames = []
for line in lines:
    filenames.append(line.strip('\n'))
AnnoPath = os.path.join(dataset_dir,DIRECTORY_ANNOTATIONS)
num_persion =0
num_image = 0
for xmli in filenames:
    xmlfile = AnnoPath + xmli[:-4] + '.xml'
 
    DomTree = xml.dom.minidom.parse(xmlfile)
    annotation = DomTree.documentElement
 
    filenamelist = annotation.getElementsByTagName('filename')  # [<DOM Element: filename at 0x381f788>]
    filename = filenamelist[0].childNodes[0].data
    objectlist = annotation.getElementsByTagName('object')
 
    for objects in objectlist:
        # print objects
        namelist = objects.getElementsByTagName('name')
        # print 'namelist:',namelist
        objectname = namelist[0].childNodes[0].data
        #print(objectname)
        if objectname=='person':
            num_persion=num_persion+1
    num_image=num_image+1
print('num_image= ', num_image, ' num_persion= ',num_persion)