# $OpenBSD: Makefile,v 1.7 2019/05/20 22:15:06 naddy Exp $

COMMENT =		framework to create integrate services and actions
DISTNAME =		purpose-${VERSION}

SHARED_LIBS +=  KF5Purpose                0.3 # 5.43
SHARED_LIBS +=  KF5PurposeWidgets         0.3 # 5.43
SHARED_LIBS +=  PhabricatorHelpers        0.3 # 5.43
SHARED_LIBS +=  ReviewboardHelpers        0.3 # 5.43

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5Widgets c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtdeclarative

#-- The following RUNTIME packages have not been found:
# * org.kde.kdeconnect-QMLModule, org.kde.kdeconnect is a runtime dependency
# * org.kde.kquickcontrolsaddons-QMLModule, org.kde.kquickcontrolsaddons is a
#   runtime dependency

# The following OPTIONAL packages have not been found:
# * KAccounts

# sucks
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
