SUBDIR =
SUBDIR += extra-cmake-modules

# do not sort blindly: items below are listed in the straight build order
# tier docs: https://api.kde.org/frameworks/index.html

# tier 1

# Oxygen Icons will be shipped standalone due to its large size and infrequent
# development and renamed to oxygen-icons
# SUBDIR += oxygen-icons

SUBDIR += ki18n
SUBDIR += attica
SUBDIR += bluez-qt
SUBDIR += breeze-icons
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
SUBDIR += solid
SUBDIR += sonnet
SUBDIR += threadweaver
SUBDIR += syntax-highlighting
SUBDIR += prison
SUBDIR += syndication
SUBDIR += kholidays
SUBDIR += kcalendarcore
SUBDIR += kquickcharts
SUBDIR += kglobalaccel
SUBDIR += kirigami
SUBDIR += kstatusnotifieritem
SUBDIR += ktexttemplate

# tier 2
SUBDIR += kauth
SUBDIR += kcompletion
SUBDIR += kcrash
SUBDIR += kdoctools
SUBDIR += kfilemetadata
SUBDIR += kimageformats
SUBDIR += knotifications
SUBDIR += kjobwidgets
SUBDIR += kpty
SUBDIR += kunitconversion
SUBDIR += kpackage
#SUBDIR += kuserfeedback

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice
SUBDIR += kcolorscheme
SUBDIR += kconfigwidgets
SUBDIR += kiconthemes
SUBDIR += kcontacts
SUBDIR += kpeople
SUBDIR += kwallet
SUBDIR += ktextwidgets
SUBDIR += kdesu
SUBDIR += kxmlgui
SUBDIR += kbookmarks
SUBDIR += kded
SUBDIR += qqc2-desktop-style
SUBDIR += kdeclarative
SUBDIR += knewstuff
SUBDIR += ksvg
SUBDIR += kio
SUBDIR += kparts
SUBDIR += kcmutils
SUBDIR += baloo
SUBDIR += knotifyconfig
SUBDIR += ktexteditor
SUBDIR += krunner
SUBDIR += purpose
SUBDIR += kdav

# tier 4
# frameworkintegration - needs AppStream 1.0. It needs a current release of
# PackageKit for the Qt 6 library.
SUBDIR += frameworkintegration

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
