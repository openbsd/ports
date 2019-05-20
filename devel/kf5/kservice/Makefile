# $OpenBSD: Makefile,v 1.13 2019/05/20 22:15:06 naddy Exp $

COMMENT =		plugin framework for KDE desktop services
DISTNAME =		kservice-${VERSION}

SHARED_LIBS =		KF5Service		4.3

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n Qt5Core Qt5DBus Qt5Xml c m

MODULES +=	lang/python

BUILD_DEPENDS =	devel/bison \
		devel/gettext,-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n

CONFIGURE_ARGS +=	-DAPPLICATIONS_MENU_NAME:STRING="kf5-applications.menu" \
			-DCMAKE_POLICY_DEFAULT_CMP0058=OLD
#The following tests FAILED:
#1 - ksycocatest (Failed)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
