Current project status managed in [Taiga](https://tree.taiga.io/project/xavierjulian-open-source-projects/)

# Inkscape Open Symbols
**Symbol libraries are sets of SVG symbols located in one SVG document.** For the more technical audience, Inkscape searches for any valid SVG file with symbols (```<symbol>``` element) in your system configuration directory (typically ```share/inkscape```)

## Why use Inkscape Open Symbols?

Inkscape 0.91 includes just five example libraries: Logic Symbols, AIGA/DOT Transportation Symbols, Map Symbols, Flow Chart Shapes, and Word Balloons (made by Martin Owens and Tavmjong Bah).

Inkscape Open Symbols adds a whole lot more!

![Using Inkscape Symbols](http://i.imgur.com/fHiouO8.png)

## Which symbols are included in Inkscape Open Symbols?

The included symbols libraries so far are:

**[Google Material Design Icons](https://github.com/google/material-design-icons)**
* Google Material Design **Action** Set
* Google Material Design **Alert** Set
* Google Material Design **AV** Set
* Google Material Design **Communication** Set
* Google Material Design **Content** Set
* Google Material Design **Device** Set
* Google Material Design **Editor** Set
* Google Material Design **File** Set
* Google Material Design **Hardware** Set
* Google Material Design **Image** Set
* Google Material Design **Maps** Set
* Google Material Design **Navigation** Set
* Google Material Design **Notification** Set
* Google Material Design **Social** Set
* Google Material Design **Toggle** Set

  (A live [preview](http://google.github.io/material-design-icons/) of this icon set is available at the Google Material Design github repo.)

**[Github Octicons](https://octicons.github.com/)**
GitHub's icon font

**[Humble UI](https://github.com/Xaviju/inkscape-open-symbols/wiki/Humble-UI)**
A simple UX UI elements for your wireframes created by [Xaviju](https://github.com/Xaviju)

**[Ubuntu Suru Icon Set](http://discourse.ubuntu.com/t/suru-icon-theme-for-desktop/1813)**
Suru is the icon theme of Ubuntu for phones and tablets. Thanks to [mivoligo](https://github.com/mivoligo) for converting them to inkscape symbols.

* Ubuntu Suru **Actions** Set
* Ubuntu Suru **Apps** Set
* Ubuntu Suru **Devices** Set
* Ubuntu Suru **Mimetypes** Set
* Ubuntu Suru **Status** Set

**[Font Awesome Icons](http://fortawesome.github.io/Font-Awesome/icons/)**
Font Awesome gives you scalable vector icons that can instantly be customized. With the collaboration of [elhombretecla](https://github.com/elhombretecla) for converting them to inkscape symbols.

**[Gnome Icon Set](https://github.com/GNOME/gnome-icon-theme-symbolic)**
Purpose of this icon theme is to extend the base icon theme that follows the
Tango style guidelines for specific purposes. This would include OSD messages,
panel system/notification area, and possibly menu icons.
* Gnome Icons **Action** Set
* Gnome Icons **Apps** Set

**[Automattic Genericons](https://github.com/Automattic/Genericons)** Genericons are vector icons embedded in a webfont designed to be clean and simple keeping with a generic aesthetic.

**[Taiga Icons](https://github.com/taigaio)** Icon set from Taiga: a project management platform for agile developers & designers.

**[Open Iconic](https://github.com/iconic/open-iconic)** An open source icon set with 223 marks in SVG, webfont and raster formats

**[Entypo](http://www.entypo.com/)** 411 carefully crafted premium pictograms by [Daniel Bruce](http://www.danielbruce.se/)
* Entypo Internet Icons ported from [Entypo's Social Extension SVG Set](http://www.entypo.com/) by [Jacques Laroche](http://currentperspectives.org/about/).

**Weatherize** A set of symbols for weather related events made by **[Jacques Laroche](http://currentperspectives.org/about/)**.

**StateFAce** USA States Symbol Set with all 50 states plus D.C. and a wee continental U.S. map by **[StateFace](https://propublica.github.io/stateface/)**. Thanks to [cleversomeday](https://github.com/cleversomeday)

**[EmojiOne](http://emojione.com/)** the first complete, independent, open-source emoji set.

###Icon licenses
- Emoji one = CC BY 4.0 (Attribution) http://emojione.com/licensing/
- Font Awesome = SIL OFL 1.1 http://fontawesome.io/license/ 
- Genericons = GPL v2 LICENSE.TXT from https://genericons.com/
- Gnome Icon Theme = CC BY SA 3.0 https://github.com/GNOME/gnome-icon-theme-symbolic/blob/master/COPYING
- Humble UI = CC BY 4.0 https://github.com/Xaviju/inkscape-open-symbols/wiki/Humble-UI
- Google Material Design Icons = Apache 2 https://github.com/google/material-design-icons
- Taiga Icons = CC BY SA 4.0 https://github.com/taigaio/taiga-design
- Open Iconic = MIT https://github.com/iconic/open-iconic
- Entypo = CC BY-SA 4.0 www.entypo.com
- StateFace = Copyright but in the copyright notes says that there are no guarantees. That the copyright note must be in all copies of the library that's all. https://propublica.github.io/stateface/
- Wheaterize = No license or website found.

## How do I install Inkscape Open Symbols?

1. Grab the icon libraries you need by **cloning the repo** or **downloading the ZIP**. You can also save the SVG files to your system directly from github.
2. Copy the individual SVG files into your Inkscape share directoy (typically ```share/inkscape```) under the ```symbols``` folder. If it's not there, create it.
  - For OS X and Linux, the local user directory is `~/.config/inkscape/symbols`.
  - For Windows, the directory is:
    - `%PROGRAMFILES%\Inkscape\share\symbols`. (64 bits)
	- `%PROGRAMFILES(x86)%\Inkscape\share\symbols`. (32 bits)
3. Launch Inkscape (close it first if it's already running).
4. Open Symbols from ```Object > symbols``` or press ```Ctrl+Shift+Y```. You should see all the Material Design Icons sets as well as Octicons in the "Symbol set" dropdown.

Available in Arch Linux and derivated through AUR: https://aur.archlinux.org/packages/inkscape-open-symbols-git/

## How can I request new symbols?

Please fill out an issue and provide a SVG reference. If available and well created, it will be fast to generate.

## Why not do it from the UI?
It is perfectly fine to use the Inkscape UI for library development, but they won't be as useful for developers as it is well generated, minimized and packed for use in production development in some cases.
**Some icons need to be SVG processed in order to be fully useful for both for designers and developers.**

**If you don't need to use it for web development you can watch this cool UI creation video**: [Creating symbol libraries in Inkscape](https://www.youtube.com/watch?v=jdaGB0zCdHw)

## How can I contribute?
Pull Requests are more than welcome for your favorite open source icon sets. Please don't hesitate to contact me for any help or mentorship.

If you are developing by yourself but are not sure how to develop this library please read my article on Medium on [how to create you own icon libraries for inkscape 0.91](https://medium.com/@xaviju/creating-your-own-symbol-library-in-inkscape-0-91-and-make-your-front-end-developer-you-338588137aaf)

Awesome Icon Set libraries to be included in the future could be:
- [Foundation Icons](http://foundation.zurb.com/icon-fonts.html)
- [Elusive Icons](http://elusiveicons.com/icons/)
- [Entypo](http://www.entypo.com/)
- [Weather Icons](https://github.com/erikflowers/weather-icons)
