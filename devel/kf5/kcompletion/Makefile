# $OpenBSD: Makefile,v 1.13 2021/01/23 18:09:52 rsadowski Exp $

COMMENT =		text completion support for Qt-based apps
DISTNAME =		kcompletion-${VERSION}

SHARED_LIBS =		KF5Completion		6.1

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

LIB_DEPENDS =		devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kwidgetsaddons>=${MODKF5_VERSION}

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
