# $OpenBSD: Makefile,v 1.1.1.1 2018/04/01 22:49:22 rsadowski Exp $

COMMENT =		framework to create integrate services and actions
DISTNAME =		purpose-${VERSION}

SHARED_LIBS +=  KF5Purpose                0.0 # 5.43
SHARED_LIBS +=  KF5PurposeWidgets         0.0 # 5.43
SHARED_LIBS +=  PhabricatorHelpers        0.0 # 5.43
SHARED_LIBS +=  ReviewboardHelpers        0.0 # 5.43

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Widgets c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools

RUN_DEPENDS =		x11/qt5/qtdeclarative \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/kf5/ki18n \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kservice \
			devel/kf5/kio

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
