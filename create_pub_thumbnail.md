---
---

# Creating Publication Thumbnails

This document briefly outlines how to create thumbnails from PDF documents that can be used as images for "card" components, such as those on the "projects" page.

1. Install Python and activate environment
2. Install poppler library (see https://pdf2image.readthedocs.io/en/latest/installation.html for details)
  **Ubuntu:**
   ```sudo apt-get install poppler-utils```
  **MacOS:**
  ```brew install poppler```
  **Windows:**
  - Download latest release from [oschwartz10612](https://github.com/oschwartz10612/poppler-windows)
  - Move the extracted directory to the desired place on your system
  - Add the ```bin/``` directory to your [PATH](https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/)
  - Test that all went well by opening ```cmd``` and making sure that you can call ```pdftoppm -h```
3. Then use:
  ```pdftocairo path/to/file.pdf -jpeg -singlefile -scale-to 300 -r 300```
  - This will create a ```.jpg``` file in the current directory
    - e.g. to create the jpeg in the same folder as the original PDF, you would need to move to that directory on the command line.
  - The ```-singlefile``` option only creates an image of the first page
  - The ```-scale-to``` option scales the long side of the page to be X pixels.
  - The ```-r``` option sets the resolution
  - Visit https://www.mankier.com/1/pdftocairo to see additional options that are available
   
