# $OpenBSD: Makefile,v 1.14 2020/03/23 18:01:10 rsadowski Exp $

COMMENT =		plugin framework for KDE desktop services
DISTNAME =		kservice-${VERSION}

SHARED_LIBS =		KF5Service		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5Crash
WANTLIB += KF5DBusAddons KF5I18n Qt5Core Qt5DBus Qt5Xml c m

BUILD_DEPENDS =	devel/bison \
		devel/gettext,-tools \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/kcrash>=${MODKF5_VERSION} \
		devel/kf5/kdbusaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DAPPLICATIONS_MENU_NAME:STRING="kf5-applications.menu" \
			-DCMAKE_POLICY_DEFAULT_CMP0058=OLD
#The following tests FAILED:
#1 - ksycocatest (Failed)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
