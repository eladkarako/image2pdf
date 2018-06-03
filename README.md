<h1>image2pdf</h1>

an automatic-tool to generate a high-quality PDF of a set of images.

advantages: same quality as the source-images, Unicode support, 
removes meta-tag and private-informations, purges past-revisions, so no tag role-back,
linearizes and optimizes the PDF for fast loading and rendering,

tools included:
- <a href="imagemagick.org/download/binaries/?C=M;O=D"                                     >ImageMagick</a> [June  2<sup>nd</sup>, 2018] - ver7.0.7.38 portable Q16 x86  
- <a href="https://www.sno.phy.queensu.ca/~phil/exiftool/"                                 >EXIFTool</a>    [May  29<sup>nd</sup>, 2018] - ver10.99.0 x86
- <a href="https://sourceforge.net/projects/qpdf/files/qpdf/"                              >qPDF</a>        [Merch 6<sup>th</sup>, 2018] - ver8.0.2.0 msvc32 x86
- <a href="https://nodejs.org/download/nightly/v11.0.0-nightly2018053189d211f54a/win-x86/" >NodeJS</a>      [May  31<sup>th</sup>, 2018] - ver11.0.0 nightly2018053189d211f54a x86

ImageMagick joins the images to a one PDF, 
exiftool removes meta-data/tags, 
qpdf removes the ability to role-back the exiftool changes, 
it also linearize and optimize the result for faster rendering.

<hr/>

the example folder contains few-dummy JPG-images,
and a batch file to create the PDF,
you may use it as a template to whatever tool you need.

<hr/>

extract <code>bin.7z</code> file to a <code>bin</code> folder, 
which includes all the tools.
