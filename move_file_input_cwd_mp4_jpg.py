import os
import shutil
import os
cwd = os.getcwd()
folder_contain = input("Enter name folder contain file need move: ")
# extension = input("Enter extension file: ")
sourcepath = cwd + '\\' + folder_contain
destinationpathjpg = cwd + '\\' + folder_contain + '_' + 'jpg'
destinationpathmp4 = cwd + '\\' + folder_contain + '_' + 'mp4'


if not os.path.exists(destinationpathjpg):
    os.makedirs(destinationpathjpg)

if not os.path.exists(destinationpathmp4):
    os.makedirs(destinationpathmp4)

sourcefiles = os.listdir(sourcepath)

for file in sourcefiles:
    if file.endswith('.mp4'):
        shutil.move(os.path.join(sourcepath,file), os.path.join(destinationpathmp4,file))
        

for file in sourcefiles:
    if file.endswith('.jpg'):
        shutil.move(os.path.join(sourcepath,file), os.path.join(destinationpathjpg,file))

