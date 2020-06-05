# $OpenBSD: Makefile,v 1.18 2020/06/05 12:07:59 rsadowski Exp $

SUBDIR =
SUBDIR += extra-cmake-modules

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n
SUBDIR += attica
SUBDIR += bluez-qt
SUBDIR += breeze-icons
SUBDIR += kapidox
SUBDIR += karchive
SUBDIR += kcodecs
SUBDIR += kconfig
SUBDIR += kcoreaddons
SUBDIR += kdbusaddons
SUBDIR += kdnssd
SUBDIR += kguiaddons
SUBDIR += kidletime
SUBDIR += kitemmodels
SUBDIR += kitemviews
SUBDIR += kplotting
SUBDIR += kwidgetsaddons
SUBDIR += kwindowsystem
SUBDIR += oxygen-icons
SUBDIR += solid
SUBDIR += sonnet
SUBDIR += threadweaver
SUBDIR += syntax-highlighting
SUBDIR += prison
SUBDIR += syndication
SUBDIR += kholidays

# tier 2
SUBDIR += kauth
SUBDIR += kcompletion
SUBDIR += kcrash
SUBDIR += kdoctools
SUBDIR += kfilemetadata
SUBDIR += kimageformats
SUBDIR += kjobwidgets
SUBDIR += knotifications
SUBDIR += kpty
SUBDIR += kunitconversion
SUBDIR += kpackage

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice
SUBDIR += kconfigwidgets
SUBDIR += kiconthemes
SUBDIR += kpeople
SUBDIR += kwallet
SUBDIR += kemoticons
SUBDIR += kglobalaccel
SUBDIR += ktextwidgets
SUBDIR += kxmlgui
SUBDIR += kbookmarks
SUBDIR += kdesu
SUBDIR += kio
SUBDIR += kirigami2
SUBDIR += knewstuff
SUBDIR += kactivities
SUBDIR += kinit
SUBDIR += kactivities-stats
SUBDIR += kparts
SUBDIR += kded
SUBDIR += kxmlrpcclient
SUBDIR += kdeclarative
SUBDIR += kcmutils
SUBDIR += baloo
SUBDIR += knotifyconfig
SUBDIR += ktexteditor
SUBDIR += plasma-framework
SUBDIR += krunner
SUBDIR += qqc2-desktop-style
SUBDIR += purpose

# porting aids
SUBDIR += kjs
SUBDIR += kjsembed
SUBDIR += khtml
SUBDIR += kmediaplayer
SUBDIR += kdesignerplugin
SUBDIR += kross
SUBDIR += kdewebkit
SUBDIR += kdelibs4support

# tier 4
SUBDIR += frameworkintegration

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt
#SUBDIR += kwayland

.include <bsd.port.subdir.mk>
