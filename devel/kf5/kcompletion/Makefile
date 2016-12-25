# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =		text completion support for Qt-based apps
DISTNAME =		kcompletion-${VERSION}

SHARED_LIBS =		KF5Completion		1.0

WANTLIB =  KF5ConfigCore KF5ConfigGui KF5WidgetsAddons Qt5Core
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml m

LIB_DEPENDS =		devel/kf5/kconfig \
			devel/kf5/kwidgetsaddons

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
