# $OpenBSD: Makefile,v 1.3 2016/12/28 08:09:00 zhuk Exp $

SUBDIR =
SUBDIR += extra-cmake-modules # 100% tests passed, 0 tests failed out of 48

# do not sort blindly: items below are listed in the straight build order

# tier 1
SUBDIR += ki18n			# 100% tests passed, 0 tests failed out of 4
SUBDIR += attica		# 100% tests passed, 0 tests failed out of 1
SUBDIR += bluez-qt 		# 100% tests passed, 0 tests failed out of 9
SUBDIR += breeze-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += kapidox		# NO_TEST
SUBDIR += karchive		# 100% tests passed, 0 tests failed out of 5
SUBDIR += kcodecs		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kconfig		# 100% tests passed, 0 tests failed out of 35
SUBDIR += kcoreaddons		# 100% tests passed, 0 tests failed out of 23
SUBDIR += kdbusaddons		# tests stuck
SUBDIR += kdnssd		# NO_TEST
SUBDIR += kguiaddons		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kidletime		# NO_TEST
SUBDIR += kitemmodels		# 100% tests passed, 0 tests failed out of 11
SUBDIR += kitemviews		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kplotting		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kwidgetsaddons	# 100% tests passed, 0 tests failed out of 12
SUBDIR += kwindowsystem		# 75% tests passed, 3 tests failed out of 12
SUBDIR += oxygen-icons		# 67% tests passed, 1 tests failed out of 3
SUBDIR += solid 		# 75% tests passed, 1 tests failed out of 4
SUBDIR += sonnet 		# 100% tests passed, 0 tests failed out of 4
SUBDIR += threadweaver		# 100% tests passed, 0 tests failed out of 7
SUBDIR += syntax-highlighting	# 100% tests passed, 0 tests failed out of 8
SUBDIR += prison		# NO_TEST

# tier 2
SUBDIR += kauth			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kcompletion		# 100% tests passed, 0 tests failed out of 4
SUBDIR += kcrash		# 50% tests passed, 1 tests failed out of 2
SUBDIR += kdoctools		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kfilemetadata		# 82% tests passed, 2 tests failed out of 11
SUBDIR += kimageformats		# 100% tests passed, 0 tests failed out of 13
SUBDIR += kjobwidgets		# NO_TEST
SUBDIR += knotifications	# 100% tests passed, 0 tests failed out of 1
SUBDIR += kpty			# tests stuck
SUBDIR += kunitconversion	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kpackage		# 89% tests passed, 1 tests failed out of 9

# tier 3
# high contention on [kservice..kio..kdeclarative] path, be careful
SUBDIR += kservice		# 100% tests passed, 0 tests failed out of 10
SUBDIR += kconfigwidgets	# 100% tests passed, 0 tests failed out of 3
SUBDIR += kiconthemes		# 100% tests passed, 0 tests failed out of 6
SUBDIR += kpeople		# 100% tests passed, 0 tests failed out of 3
SUBDIR += kwallet		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kemoticons		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kglobalaccel		# 100% tests passed, 0 tests failed out of 1
SUBDIR += ktextwidgets		# 100% tests passed, 0 tests failed out of 5
SUBDIR += kxmlgui		# 80% tests passed, 1 tests failed out of 5
SUBDIR += kbookmarks		# 100% tests passed, 0 tests failed out of 1
SUBDIR += kdesu			# NO_TEST
SUBDIR += kio			# 82% tests passed, 9 tests failed out of 51
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
SUBDIR += baloo			# 18 schedulertest stuck in, filewatchtest fails, rest okay
SUBDIR += kdesignerplugin	# 100% tests passed, 0 tests failed out of 2
SUBDIR += knotifyconfig		# NO_TEST
SUBDIR += ktexteditor		# 98% tests passed, 1 tests failed out of 65 (testdata is missing)
SUBDIR += plasma-framework	# 67% tests passed, 5 tests failed out of 15

# tier 4
SUBDIR += frameworkintegration	# 100% tests passed, 0 tests failed out of 1

# porting aids
SUBDIR += kdelibs4support	# 92% tests passed, 3 tests failed out of 39
SUBDIR += khtml			# 100% tests passed, 0 tests failed out of 2
SUBDIR += kjs			# 100% tests passed, 0 tests failed out of 1
SUBDIR += kjsembed		# NO_TEST
SUBDIR += kmediaplayer		# 100% tests passed, 0 tests failed out of 2
SUBDIR += kross			# 100% tests passed, 0 tests failed out of 1
SUBDIR += krunner		# 100% tests passed, 0 tests failed out of 1

# corresponding software isn't ported
#SUBDIR += modemmanager-qt
#SUBDIR += network-manager-qt

.include <bsd.port.subdir.mk>
