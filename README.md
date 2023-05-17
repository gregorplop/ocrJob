# ocrJob
#### An ocrmypdf front-end / batch job designer. Currently supported for Windows.

## A GUI application for:
+ Automatically surveying a folder tree, looking for PDF documents
+ Configuring a set of basic parameters for ocrmypdf/Tesseract
+ Starting and monitoring the progress/outcomes of a batch OCR job for every single document file
+ Saving the outcome to a CSV file

![Configuration screen](https://raw.githubusercontent.com/gregorplop/ocrJob/main/screenshots/ocrJobSetup.jpg)

## Dependencies
Since ocJob is a front-end, it does not internally implement any OCR/image processing functionality. Prior to using the application, you will need to install the following:
* **Tesseract**
    * Chocolatey: **choco install --pre tesseract**
    * Installer for Windows: [UB Mannheim build](https://github.com/UB-Mannheim/tesseract/wiki)  
    This option is preferrable, because it gives you the opportunity to select and download additional languages/scripts at install time
* **Python**
    * Chocolatey: **choco install python3**
* **Ghostscript**
    * Chocolatey: **choco install ghostscript**
* **pngquant** (optional)
    * Chocolatey: **choco install pngquant**
* **ocrmypdf**
    * pip: **pip install ocrmypdf**
* **xpdf-utils** (pdfinfo for ocrJob use)
    * Chocolatey: **choco install xpdf-utils**  

**Make sure every binary you install, is mentioned in your system PATH**  

You can review dependencies for different platforms on the [ocrmypdf help page](https://ocrmypdf.readthedocs.io/en/latest/installation.html)  
Everything you read in this guide, has only been tested on [Windows](https://ocrmypdf.readthedocs.io/en/latest/installation.html#native-windows)

## Supported platforms for ocrJob
This application has been created and tested on Windows 10/11. We also provide a binary release for this platform.  
Although Xojo can compile binaries for MacOS and Linux, we do not build or test for these.  
ocrJob contains no Windows-specific code, so theoretically you can build for other platforms and it will most likely work. But you're on your own in this.

## Notes for users
* If you experience erratic behavior, try turning off your anti-virus application. Also make sure this application runs on a relatively fast workstation.
* Cancelling a running job will terminate the batch run on the following file. It will also remove all newly created files. If you opted for replacing the original files, they will not be reverted to their initial content.
* On the Job Progress list:
    * Double-clicking on a file name cell, will open the file using the default viewer
    * Double-clicking on a folder name cell, will open the folder using the OS file manager (eg Windows Explorer) 
    * Double-clicking on an Outcome cell, will show the numeric error code.
## Notes for developers
* If you need to implement the batch engine functionality in a console/service application, you will find everything you need in the ocrJob module.

