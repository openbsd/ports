# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =		text completion support for Qt-based apps
DISTNAME =		kcompletion-${VERSION}

SHARED_LIBS =		KF5Completion		4.1

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5ConfigGui KF5WidgetsAddons
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
