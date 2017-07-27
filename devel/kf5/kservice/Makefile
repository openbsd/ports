# $OpenBSD: Makefile,v 1.5 2017/07/27 09:34:38 sthen Exp $

COMMENT =		plugin framework for KDE desktop services
DISTNAME =		kservice-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Service		2.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5Crash KF5DBusAddons
WANTLIB += KF5I18n ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Xml c m

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

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0058=OLD

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

# avoid conflict with KDE4
post-install:
	cd ${WRKINST}/etc/xdg/menus; \
	mv applications.menu applications-kde5.menu

.include <bsd.port.mk>
