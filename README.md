# ocrJob
#### An ocrmypdf front-end / batch job designer

## A GUI application for
+ Automatically surveying a folder tree, looking for PDF documents
+ Configuring a set of basic parameters for ocrmypdf/Tesseract
+ Starting and monitoring the progress/outcomes of a batch OCR job
+ Saving the outcome to a CSV file

![Configuration screen](https://raw.githubusercontent.com/gregorplop/ocrJob/main/screenshots/ocrJobSetup.jpg)



Windows Native dependencies
https://ocrmypdf.readthedocs.io/en/latest/installation.html#native-windows

-Tesseract:  
choco install --pre tesseract

-or download from:
https://github.com/UB-Mannheim/tesseract/wiki

-Others:  
choco install python3  
choco install ghostscript  
choco install pngquant  
pip install ocrmypdf  


-For ocrJob use:  
choco install xpdf-utils

**all the above need to be in the system path**
