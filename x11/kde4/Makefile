# $OpenBSD: Makefile,v 1.40 2016/12/25 16:35:32 zhuk Exp $

# Build dependency tree of main building blocks:
# OUTSIDE: akonadi, attica, automoc, cagibi, phonon, qimageblitz,
# libqaccessibilityclient, kwebkitpart, libktorrent
#
# smokegen
# +-> smokeqt
# |   +-> qyoto ->------------------------------------->-----+
# |   +-> ruby-qt ->----------------------------------->----+|
# |   +-> p5-qt ->------------------------------------->---+||
# |                                                        |||
# +->-------------------------------------------------->-+ |||
#                                                        | |||
# devel/kf5/oxygen-icons                                 | |||
# +-> libs                                               | |||
#     +-> pure resources: base-artwork, l10n, wallpapers | |||
#     |                                                  | |||
#     +-> baseapps <---------------<-+                   | |||
#     |   +-> konsole                |                   | |||
#     |                              |                   | |||
#     |-> kfilemetadata -->-----+    |                   | |||
#     +-> pimlibs               |    |                   | |||
#     |   +-> libkfbapi         |    |                   | |||
#     |   +-> libkgapi          |    |                   | |||
#     |   +-> pim-runtime       |    |                   | |||
#     |   +-> baloo <>-------<>-+-->-+                   | |||
#     |       +-> nepomuk-core                           | |||
#     |           +-> kactivities                        | |||
#     |               +-> runtime                        | |||
#     |           +-> pim                |               | |||
#     |           +-> py-kde                             | |||
#     |                                                  | |||
#     +-> nepomuk-core                                   | |||
#     |   +-> kactivities -->--+------->-+               | |||
#     |   +-> runtime <--+---<-+         |               | |||
#     |   +-> pimlibs ->-+               |               | |||
#     |       +-> pim-runtime            |               | |||
#     |       +-> pim                    |               | |||
#     |       +-> py-kde                 |               | |||
#     |           +-> some games         |               | |||
#     |           +-> workspace <------<-+               | |||
#     |           |   +-> former admin   |               | |||
#     |           |   +-> artwork        |               | |||
#     |           |   +-> former network |               | |||
#     |           |                      |               | |||
#     |           | +-<----------------<-+               | |||
#     |           | |                                    | |||
#     |           +-+-> kate ->-+                        | |||
#     |                         |                        | |||
#     +-> smokekde <-+-<--------+-<-+-<---(smokegen)---<-+ |||
#     |   |          |              |                      |||
#     |   |          +-<- smokeqt <-+                      |||
#     |   |                                                |||
#     |   +-> p5-kde <--------------------(p5-qt)----------+||
#     |   +-> korundum <------------------(ruby-qt)---------+|
#     |   +-> kimono <--------------------(qyoto)------------+
#     |
#     +-> libkdeedu
#     |   +-> former kdeedu
#     |
#     +-> libkdegames, libkmahjongg
#     |   +-> former kdegames (see also py-kde above)
#     |
#     +-> other libk*
#     |   +-> former kdegraphics
#     |   +-> former kdemultimedia
#     |
#     +-> former kdeaccessibility
#     +-> former kdesdk
#     +-> former kdetoys
#     +-> former kdeutils

SUBDIR =
# don't even try to keep these sorted

# libraries
SUBDIR += libs
SUBDIR += pimlibs

# extra base
SUBDIR += baloo
SUBDIR += baloo-widgets
SUBDIR += kactivities
SUBDIR += kfilemetadata
SUBDIR += kqtquickcharts
SUBDIR += nepomuk-core
SUBDIR += nepomuk-widgets
SUBDIR += runtime
SUBDIR += pim-runtime
SUBDIR += workspace
SUBDIR += baseapps
SUBDIR += kate
SUBDIR += konsole

# bindings and wrappers
SUBDIR += kross-interpreters
SUBDIR += smokegen
SUBDIR += smokeqt
SUBDIR += p5-qt
SUBDIR += ruby-qt
SUBDIR += qyoto
SUBDIR += smokekde
SUBDIR += py-kde
SUBDIR += p5-kde
SUBDIR += korundum
SUBDIR += kimono

# fat packages
SUBDIR += pim
SUBDIR += webdev

# former kdeaccessibility
SUBDIR += jovie
SUBDIR += kaccessible
SUBDIR += kmousetool
SUBDIR += kmag
SUBDIR += kmouth

# former kdeutils
SUBDIR += ark
SUBDIR += filelight
SUBDIR += kcalc
SUBDIR += kcharselect
SUBDIR += kdf
SUBDIR += kfloppy
SUBDIR += kgpg
SUBDIR += kremotecontrol
SUBDIR += ktimer
SUBDIR += kwalletmanager
SUBDIR += print-manager
SUBDIR += superkaramba
SUBDIR += sweeper

# former kdeedu
SUBDIR += artikulate
SUBDIR += blinken
SUBDIR += cantor
SUBDIR += analitza
SUBDIR += kalgebra
#SUBDIR += kalzium	XXX hard dependencies problems
SUBDIR += kanagram
SUBDIR += kbruch
SUBDIR += kgeography
SUBDIR += khangman
SUBDIR += kig
SUBDIR += kiten
SUBDIR += klettres
SUBDIR += kmplot
SUBDIR += kstars
SUBDIR += ktouch
SUBDIR += kturtle
SUBDIR += kwordquiz
SUBDIR += libkdeedu
SUBDIR += marble
SUBDIR += pairs
SUBDIR += parley
SUBDIR += rocs
SUBDIR += step

# former kdegames
SUBDIR += libkdegames
SUBDIR += libkmahjongg
SUBDIR += bomber
SUBDIR += bovo
SUBDIR += granatier
SUBDIR += kajongg
SUBDIR += kapman
SUBDIR += katomic
SUBDIR += kblackbox
SUBDIR += kblocks
SUBDIR += kbounce
SUBDIR += kbreakout
SUBDIR += kdiamond
SUBDIR += kfourinline
SUBDIR += kgoldrunner
SUBDIR += kigo
SUBDIR += killbots
SUBDIR += kiriki
SUBDIR += kjumpingcube
SUBDIR += klickety
SUBDIR += klines
SUBDIR += kmahjongg
SUBDIR += kmines
SUBDIR += knavalbattle
SUBDIR += knetwalk
SUBDIR += kolf
SUBDIR += kollision
SUBDIR += konquest
SUBDIR += kpat
SUBDIR += kreversi
SUBDIR += kshisen
SUBDIR += ksirk
SUBDIR += ksnakeduel
SUBDIR += kspaceduel
SUBDIR += ksquares
SUBDIR += ksudoku
SUBDIR += ktuberling
SUBDIR += kubrick
SUBDIR += lskat
SUBDIR += palapeli
SUBDIR += picmi

# former kdegraphics
SUBDIR += graphics-mobipocket
SUBDIR += graphics-strigi-analyzer
SUBDIR += graphics-thumbnailers
SUBDIR += gwenview
SUBDIR += kamera
SUBDIR += kcolorchooser
SUBDIR += kgamma
SUBDIR += kolourpaint
SUBDIR += kruler
SUBDIR += ksaneplugin
SUBDIR += ksnapshot
SUBDIR += libkdcraw
SUBDIR += libkexiv2
SUBDIR += libkipi
SUBDIR += libksane
SUBDIR += okular
SUBDIR += svgpart

# former kdemultimedia
SUBDIR += audiocd-kio
SUBDIR += dragon
SUBDIR += ffmpegthumbs
SUBDIR += juk
SUBDIR += kmix
SUBDIR += kscd
SUBDIR += libkcddb
SUBDIR += libkcompactdisc
SUBDIR += mplayerthumbs

# former kdeadmin
SUBDIR += kcron
SUBDIR += ksystemlog
SUBDIR += kuser

# former kdenetwork
SUBDIR += kget
SUBDIR += kopete
SUBDIR += kppp
SUBDIR += krdc
SUBDIR += krfb
SUBDIR += network-filesharing
SUBDIR += network-strigi-analyzers
SUBDIR += zeroconf-ioslave

# former kdesdk
SUBDIR += cervisia
SUBDIR += dev-scripts
SUBDIR += dev-utils
SUBDIR += dolphin-plugins
SUBDIR += kapptemplate
SUBDIR += kcachegrind
SUBDIR += kompare
SUBDIR += libkomparediff2
SUBDIR += lokalize
SUBDIR += okteta
SUBDIR += poxml
SUBDIR += sdk-kioslaves
SUBDIR += sdk-strigi-analyzers
SUBDIR += sdk-thumbnailers
SUBDIR += umbrello

# former kdetoys
SUBDIR += amor
SUBDIR += ktux
SUBDIR += kteatime

# additional resources
SUBDIR += artwork
SUBDIR += base-artwork
SUBDIR += l10n
SUBDIR += plasma-addons
SUBDIR += wallpapers

.include <bsd.port.subdir.mk>
