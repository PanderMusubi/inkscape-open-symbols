## How to contribute
New symbol sets and fixes to current symbol sets are essential for keeping Inkscape Open Symbols a great resource for developers and designers. We simply can't get enough time to support all the amazing available SVG resources out there. To keep it easy as possible to contribute to this repository, please follow a few guidelines. Please don't hesitate to contact me for any help or mentorship.

## License
This repository contains multiple symbol sets with their own licenses. Using them requires you to be aware that you are subject to the license of the used symbol set. All symbol set licenses are listed in the README file and in their own file metadata. The LICENSE file refers to everything unrelated to the symbol sets.

## Getting Started
To create a new symbol set is not required any advanced technical knowledge, although knowledge of basic gulp, npm and SVG will be very useful.

Please ensure that you have already installed:
- [npm](https://www.npmjs.com/)
- [svgo](https://github.com/svg/svgo) _optional, but highly recommended_
- [Inkscape](https://inkscape.org/) _yes,of course_

## New iconset

1. Create a new folder ```<nameofyoursymbols>``` and add all the SVGs that you want to turn into a new symbol set.
2. Execute ```npm install``` to install the required libraries
3. Execute ```svgo``` in your new created folder. It will clean all the icons. Some of the icons could be broken after this. We will test and fix that later.
4. Execute ```gulp --iconset <nameofyoursymbols> --dest <nameofyoursymbols>```. Please change _<nameofyoursymbols>_ with the name of the folder you created in the step 1.
5. A new file named ```svg-sprite.svg``` will be created under ```nameofyoursymbols/nameofyoursymbols/sprite/```
6. Duplicate the file [template.svg](https://github.com/Xaviju/inkscape-open-symbols/blob/master/template.svg) with your iconset name and copy all the ```<symbols>``` from your file replacing the placeholder symbol in the template.
7. Edit the header info in your new file. Do not forget to add the license, the creator and the link to the original repository or website.
8. Add in your ```<svg>``` tag: ```style="fill:black;stroke:none"``` to help Inkscape display better the new iconset.
9. Remove the folder you created in the step 1 and all the SVGs.
10. Create a new empty folder named as the new symbol library and move inside the new file you create from the template with the name ```nameofyourfolder-symbols.svg```

A new symbol library should look like [this](https://github.com/Xaviju/inkscape-open-symbols/blob/master/dashicons/dashicons-set.svg)

## Testing the iconset
Testing the iconset is as important as creating it.

1. Copy your new symbol set file into ```~/.config/inkscape/symbols```
2. Open Inkscape and press ```Ctrl + Shift + Y``` to display the symbol panel.
3. Unfold the symbol selector. Ensure that your new iconset is in the list and has a recognizable name.
4. Click and review the icons. Ensure that are not broken.

## Fixing broken icons
SVGO can break many symbols, but cleans most of them very well. If some of your symbols are broken while testing, check which one is and try cleaning it manually using [SVGOMG](https://jakearchibald.github.io/svgomg/).
Then, copy the code into your file replacing the previous code and retest the symbol set.

## Pull Requests
A pull request is the best way to contribute. Your symbol set will always include your name as contributor and you will help designers around the world to wireframe, design or create amazing user experiences.
