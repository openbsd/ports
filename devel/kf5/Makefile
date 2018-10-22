# $OpenBSD: Makefile,v 1.14 2018/10/22 20:30:41 rsadowski Exp $

SUBDIR =
SUBDIR += extra-cmake-modules	# 100% tests passed, 0 tests failed out of 49

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n			# 100% tests passed, 0 tests failed out of 5
SUBDIR += attica		# 100% tests passed, 0 tests failed out of 3
SUBDIR += bluez-qt 		# 100% tests passed, 0 tests failed out of 9
SUBDIR += breeze-icons		# 75% tests passed, 1 tests failed out of 4
SUBDIR += kapidox		# NO_TEST
SUBDIR += karchive		# 60% tests passed, 2 tests failed out of 5
SUBDIR += kcodecs		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kconfig		# 100% tests passed, 0 tests failed out of 35
SUBDIR += kcoreaddons		# 87% tests passed, 3 tests failed out of 23
SUBDIR += kdbusaddons		# STUCKS
SUBDIR += kdnssd		# NO_TEST
SUBDIR += kguiaddons		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kidletime		# NO_TEST
SUBDIR += kitemmodels		# 100% tests passed, 0 tests failed out of 11
SUBDIR += kitemviews		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kplotting		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kwidgetsaddons	# NO_TEST
SUBDIR += kwindowsystem		# 77% tests passed, 3 tests failed out of 13
SUBDIR += oxygen-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += solid			# 75% tests passed, 1 tests failed out of 4
SUBDIR += sonnet		# 80% tests passed, 1 tests failed out of 5
SUBDIR += threadweaver		# 100% tests passed, 0 tests failed out of 7
SUBDIR += syntax-highlighting	# 100% tests passed, 0 tests failed out of 6
SUBDIR += prison		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kholidays		# 100% tests passed, 0 tests failed out of 5

# tier 2
SUBDIR += kauth			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kcompletion		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kcrash		# 50% tests passed, 1 tests failed out of 2
SUBDIR += kdoctools		# 50% tests passed, 1 tests failed out of 2
SUBDIR += kfilemetadata		# 100% tests passed, 0 tests failed out of 13
SUBDIR += kimageformats		# 77% tests passed, 3 tests failed out of 13
SUBDIR += kjobwidgets		# NO_TEST
SUBDIR += knotifications	# 100% tests passed, 0 tests failed out of 1
SUBDIR += kpty			# stucks
SUBDIR += kunitconversion	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kpackage		# 91% tests passed, 1 tests failed out of 11

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice		# 80% tests passed, 2 tests failed out of 10
SUBDIR += kconfigwidgets	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kiconthemes		# 100% tests passed, 0 tests failed out of 7
SUBDIR += kpeople		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kwallet		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kemoticons		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kglobalaccel		# 100% tests passed, 0 tests failed out of 1
SUBDIR += ktextwidgets		# 100% tests passed, 0 tests failed out of 5
SUBDIR += kxmlgui		# 80% tests passed, 1 tests failed out of 5
SUBDIR += kbookmarks		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kdesu			# NO_TEST
SUBDIR += kio			# 93% tests passed, 4 tests failed out of 59
SUBDIR += kirigami2		# NO_TEST
SUBDIR += knewstuff		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kactivities		# NO_TEST
SUBDIR += kinit			# NO_TEST
SUBDIR += kactivities-stats	# NO_TEST
SUBDIR += kparts		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kded			# NO_TEST
SUBDIR += kxmlrpcclient		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kdeclarative		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kcmutils		# NO_TEST
SUBDIR += kdewebkit		# NO_TEST
SUBDIR += baloo			# NO_TEST
SUBDIR += kdesignerplugin	# 100% tests passed, 0 tests failed out of 2
SUBDIR += knotifyconfig		# NO_TEST
SUBDIR += ktexteditor		# 98% tests passed, 1 tests failed out of 66
SUBDIR += plasma-framework	# 57% tests passed, 6 tests failed out of 14
SUBDIR += krunner		# 50% tests passed, 1 tests failed out of 2
SUBDIR += qqc2-desktop-style	# NO_TEST
SUBDIR += purpose		# stucks

# porting aids
SUBDIR += kjs			# 100% tests passed, 0 tests failed out of 1
SUBDIR += kjsembed		# NO_TEST
SUBDIR += khtml			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kmediaplayer		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kross			# 100% tests passed, 0 tests failed out of 1
SUBDIR += kdelibs4support	# stucks

# tier 4
SUBDIR += frameworkintegration	# 100% tests passed, 0 tests failed out of 1

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt
#SUBDIR += kwayland

.include <bsd.port.subdir.mk>
