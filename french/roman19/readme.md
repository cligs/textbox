Collection de romans français du dix-neuvième siècle
====================================================

### Contents

The collection contains a selection of French adventure, crime fiction, education and fantastic novels from the 1860s, 1870s and 1880s. See the "metadata.csv" file for basic information about the novels. There are currently 36 novels with a total of about 4.3 million words.

|genres/decades|1860s texts (words) |1870s texts (words) | 1880s texts (words) | total texts (words) |
|--------------|--------------------|--------------------|---------------------|---------------------|
|adventure     |         3   (340k) |         3   (378k) |          3   (434k) |          9 (1.152k) |
|crime fiction |         3   (532k) |         3   (475k) |          3   (364k) |          9 (1.371k) |
|education     |         3   (333k) |         3   (372k) |          3   (298k) |          9 (1.003k) |
|fantastic     |         3   (293k) |         2   (336k) |          4   (221k) |          9   (851k) |
|total         |        12 (1.498k) |        11 (1.560k) |         13 (1.318k) |         36 (4.376k) |

The TEI schema for the basic and the linguistically annotated TEI files corresponds to the general CLiGS schema which is available in the CLiGS [reference repository](https://github.com/cligs/reference).

The metadata keywords used in the text classification section of the TEI header are controlled by an external TEI keywords file and a schematron file which are stored in the [keywords](keywords) folder.

### Formats 

* tei: Encoded following the _Guidelines_ of the Text Encoding Initiative and valid against the CLiGS standard schema available in the reference repository: https://github.com/cligs/reference (File name structure: identifier.xml)
* annotated: Encoded (almost) following the _Guidelines_ of the TEI, with very simple structural markup as well as token-level morpho-syntactic and semantic annotation, valid against the CLiGS "annotated" schema available in the reference repository: https://github.com/cligs/reference (File name structure: identifier.xml)
* txt: Simple plain text containing only the main text of the novels (File name structure: author_title-identifier.txt)

### License and Citation

All texts are in the public domain. The markup we have added is provided with a CC-BY license (Creative Commons Attribution, see http://creativecommons.org/licenses/by/4.0/), the metadata are provided with a CC-0 license (Creative Commons Zero, see https://creativecommons.org/publicdomain/zero/1.0/). 

Please provide a reference if you use this research data in your teaching or research. The following is a citation suggestion: _Collection de romans français du dix-neuvième siècle_, edited by Christof Schöch and Stefanie Popp. In: _textbox_, release 2.0.0. Würzburg: CLiGS, 2017. https://github.com/cligs/textbox/tree/master/french/roman19. DOI: 10.5281/zenodo.376666. 

### Principles of Data Curation
 
* Texts have been obtained from various sources, among them _Ebooks libres et gratuits_, _Wikisource_ and _Project Gutenberg_ and have not been further normalised. 
* The texts have been submitted to a simple text quality assurance protocol, essentially a spellcheck based on a dictionary and a curated list of named entities. The result of this check can be found in the file `spellcheck-report.csv`. (See our toolbox for the relevant resources.)
* All texts have been encoded according to the _Guidelines_ of the Text Encoding Initiative. The `teiHeader` notably contains information about the digital and print sources of the materials. The text is marked up with basic textual structures, such as parts, chapters, headings and paragraphs. Front and back matter such as prefaces or notes have been marked-up as such. The XML-TEI files are valid against a schema which is available online and referenced in each file.  
* Each text has an identifier which corresponds to the filename of the XML-TEI file. Metadata has been collected about each novel and integrated into the teiHeader. The metadata table provided separatedly in the `metadata.csv` file contains a subset of these metadata for the researchers' convenience, with identifiers linking table and files. 
* The plain text files in the "txt" folder have been automatically built from the XML-TEI files. They contain only the text body without front or back matter or notes and without any chapter headings. 
* If you would like to create your own metadata table or extract the plain text from the TEI files in a different way, please have a look at our toolbox which provides submodules for this.
* In case you notice errors of any kind in the text collection, please use the issue tracker here on GitHub to notify us. We will be glad to fix them.
