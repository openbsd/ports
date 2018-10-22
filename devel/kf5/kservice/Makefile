# $OpenBSD: Makefile,v 1.10 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =		plugin framework for KDE desktop services
DISTNAME =		kservice-${VERSION}

SHARED_LIBS =		KF5Service		4.2

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n Qt5Core Qt5DBus Qt5Xml c m

MODULES =		lang/python

BUILD_DEPENDS =		devel/bison \
			devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kcrash \
			devel/kf5/kdbusaddons \
			devel/kf5/ki18n

CONFIGURE_ARGS =	-DAPPLICATIONS_MENU_NAME:STRING="kf5-applications.menu" \
			-DCMAKE_POLICY_DEFAULT_CMP0058=OLD

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
