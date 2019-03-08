# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:41 cwen Exp $

COMMENT =		large set of KDE widgets
DISTNAME =		kwidgetsaddons-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5WidgetsAddons	4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m


TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
