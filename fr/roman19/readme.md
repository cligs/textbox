Romans français du dix-neuvième siècle
======================================

### Contents

The collection contains a selection of adventure, crime fiction, education and fantastic novels from the 1860s, 1870s and 1880s. See the "metadata.csv" file for basic information about the novels. There are currently 36 novels with a total of about 4 million words.

|genres/decades|1860s texts (words) |1870s texts (words) | 1880s texts (words) | total texts (words) |
|--------------|--------------------|--------------------|---------------------|---------------------|
|adventure     |         3   (340k) |         3   (378k) |          3   (434k) |          9 (1.152k) |
|crime fiction |         3   (532k) |         3   (475k) |          3   (364k) |          9 (1.371k) |
|education     |         3   (333k) |         3   (372k) |          3   (298k) |          9 (1.003k) |
|fantastic     |         3   (293k) |         2   (336k) |          4   (221k) |          9   (851k) |
|total         |        12 (1.498k) |        11 (1.560k) |         13 (1.318k) |         36 (4.376k) |


### Formats 

* tei: Encoded following the _Guidelines_ of the Text Encoding Initiative and valid against the CLiGS schema (File names: identifier.xml)
* txt: Simple plain text containing only the main text of the novels (File names: author_title-identifier.txt)
* A linguistically annotated version for use with the TXM analysis tool can be downloaded here: https://zenodo.org/record/44547

### License and Citation

All texts are in the public domain. The markup and metadata we have added are provided with a CC-BY (Creative Commons Attribution, see http://creativecommons.org/licenses/by/4.0/) license. 

Please provide a reference if you use this research data in your teaching or research. The following is a citation suggestion: _Romans français du dix-neuvième siècle_, edited by Christof Schöch and Stefanie Popp. Würzburg: CLiGS, 2015. https://github.com/cligs/textbox/master/fr/roman19/. 

### Principles of Data Curation
 
* Texts have been obtained from various sources, among them _Ebooks libres et gratuits_, _Wikisource_ and _Project Gutenberg_ and have not been further normalised. 
* All texts have been encoded according to the _Guidelines_ of the Text Encoding Initiative. The `teiHeader` notably contains information about the digital and print sources of the materials. The text is marked up with basic textual structures, such as parts, chapters, headings and paragraphs. Front and back matter such as prefaces or notes have been marked-up as such. The XML-TEI files are valid against a schema which is available online and referenced in each file.  
* Each text has an identifier which corresponds to the filename of the XML-TEI file. Metadata has been collected about each novel and integrated into the teiHeader. The metadata table provided separatedly in the `metadata.csv` file contains a subset of these metadata for the researchers' convenience, with identifiers linking table and files. 
* The plain text files in the "txt" folder have been automatically built from the XML-TEI files. They contain only the text body without front or back matter or notes and without any chapter headings. 
* There is a `scripts` folder with some Python scripts which have been used for manipulating the files, e.g. for creating the metadata table and extracting the plain text files. These scripts can be modified for specific use cases.
* In case you notice errors of any kind in the text collection, please use the issue tracker here on GitHub to notify us. We will be glad to fix them.
