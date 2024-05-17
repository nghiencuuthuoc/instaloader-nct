import os
import shutil
import os
cwd = os.getcwd()
folder_contain = input("Enter name folder contain file need move: ")
extension = input("Enter extension file: ")
sourcepath = cwd + '\\' + folder_contain
destinationpath = cwd + '\\' + folder_contain + '_' + extension
extension_endswith = '.' + extension
if not os.path.exists(destinationpath):
    os.makedirs(destinationpath)

sourcefiles = os.listdir(sourcepath)

for file in sourcefiles:
    if file.endswith(extension_endswith):
        shutil.move(os.path.join(sourcepath,file), os.path.join(destinationpath,file))

