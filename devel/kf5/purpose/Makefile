# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:12 rsadowski Exp $

COMMENT =		framework to create integrate services and actions
DISTNAME =		purpose-${VERSION}

SHARED_LIBS +=  KF5Purpose                1.0
SHARED_LIBS +=  KF5PurposeWidgets         1.0
SHARED_LIBS +=  PhabricatorHelpers        1.0
SHARED_LIBS +=  ReviewboardHelpers        1.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Notifications
WANTLIB += KF5Service KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Widgets c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kirigami2>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
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
