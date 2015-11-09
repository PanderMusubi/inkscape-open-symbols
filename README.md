# Inkscape Open Symbols
**Symbol libraries are sets of SVG symbols located in one SVG document.** For the more technical audience, inkscape search for any valid SVG file with symbols (```<symbol>``` element) in your system configuration directory (typically ```share/inkscape```)

Inkscape 0.91 includes five example libraries: logic symbols, AIGA/DOT transportation symbols, map symbols, flow chart shapes and word balloons made by Martin Owens and Tavmjong Bah.

![Using Inkscape Symbols](http://i.imgur.com/fHiouO8.png)

## Which symbols are included?

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

A live [preview](http://google.github.io/material-design-icons/) of the icon set is available in Google Material Design github repo.

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

## How do I install them?

1. Grab the icon libraries you need **cloning the repo** or **downloading the ZIP**. You can also save the SVG files to your system directly from github.
2. Copy the individual SVG files into your inkscape share directoy (typically ```share/inkscape```) under the ```symbols``` folder. If it's not there, create it.
  - For OS X and Linux, the local user directory is `~/.config/inkscape/symbols`.
  - For Windows, the directory appears to be `%APPDATA%\Roaming\inkscape\symbols`.
3. Launch Inkscape (close it first if it's already running).
4. Open Symbols from ```Object > symbols``` or press ```Ctrl+Shift+Y```. You should see all the Material Design Icons sets as well as Octicons in the "Symbol set" dropdown.

Available in Arch Linux and derivated through AUR: https://aur.archlinux.org/packages/inkscape-open-symbols-git/

## How can I request new symbols?

Please fill a issue and provide a SVG reference. If available and well created, it will be fast to generate.

## Why not doing it from the UI?
It is perfectly fine to use the inkscape UI for library development, but they won't be as useful for developers as if it is well generated, minimized and packed for use in production development in some cases.
**Some icons need to be SVG processed in order to be fully useful for both for designers and developers.**

**If you don't need to use it for web development you can watch this cool UI creation video**: [Creating symbol libraries in Inkscape](https://www.youtube.com/watch?v=jdaGB0zCdHw)

## How can I contribute?
Pull Requests are more than welcome for your favorite open source icon sets. Please don't hesitate to contact me for any help or mentorship.

If you develop by yourself but not sure how to develop this library please read my article on medium on [how to create you own icon libraries for inkscape 0.91](https://medium.com/@xaviju/creating-your-own-symbol-library-in-inkscape-0-91-and-make-your-front-end-developer-you-338588137aaf)

Awesome Icon Set libraries to be included in the future could be:
- [Foundation Icons](http://foundation.zurb.com/icon-fonts.html)
- [Elusive Icons](http://elusiveicons.com/icons/)
- [Entypo](http://www.entypo.com/)
- [Iconic](https://useiconic.com/open/)
