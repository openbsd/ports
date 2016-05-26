# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:57 zhuk Exp $

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
SUBDIR += knewstuff
SUBDIR += kactivities
SUBDIR += kinit
SUBDIR += kactivities-stats
SUBDIR += kparts
SUBDIR += kded
SUBDIR += kxmlrpcclient
SUBDIR += kdeclarative
SUBDIR += kcmutils
SUBDIR += kdewebkit
SUBDIR += baloo
SUBDIR += kdesignerplugin
SUBDIR += knotifyconfig
SUBDIR += ktexteditor
SUBDIR += plasma-framework

# tier 4
SUBDIR += frameworkintegration

# porting aids
SUBDIR += kdelibs4support
SUBDIR += khtml
SUBDIR += kjs
SUBDIR += kjsembed
SUBDIR += kmediaplayer
SUBDIR += kross
SUBDIR += krunner

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
