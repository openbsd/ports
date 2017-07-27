# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =		large set of KDE widgets
DISTNAME =		kwidgetsaddons-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5WidgetsAddons	2.0

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
