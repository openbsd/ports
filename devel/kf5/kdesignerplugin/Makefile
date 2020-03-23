# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:06 rsadowski Exp $

COMMENT =	integrating KDE 5 widgets with Qt Designer
DISTNAME =	kdesignerplugin-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons Qt5Core
WANTLIB += c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kdoctools>=${MODKF5_VERSION} \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION}

IS_PORTING_AID =	Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
