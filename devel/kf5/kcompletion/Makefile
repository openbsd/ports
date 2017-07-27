# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =		text completion support for Qt-based apps
DISTNAME =		kcompletion-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5Completion		2.0

WANTLIB =  KF5ConfigCore KF5ConfigGui KF5WidgetsAddons ${COMPILER_LIBCXX} Qt5Core
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml m

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
