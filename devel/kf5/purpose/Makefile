# $OpenBSD: Makefile,v 1.4 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =		framework to create integrate services and actions
DISTNAME =		purpose-${VERSION}

SHARED_LIBS +=  KF5Purpose                0.2 # 5.43
SHARED_LIBS +=  KF5PurposeWidgets         0.2 # 5.43
SHARED_LIBS +=  PhabricatorHelpers        0.2 # 5.43
SHARED_LIBS +=  ReviewboardHelpers        0.2 # 5.43

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Qml Qt5Widgets c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools \
			x11/qt5/qtdeclarative

RUN_DEPENDS =		x11/qt5/qtdeclarative \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/kf5/kcompletion \
			devel/kf5/kcoreaddons \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/kjobwidgets \
			devel/kf5/kservice \
			devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
