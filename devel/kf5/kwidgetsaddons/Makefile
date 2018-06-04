# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =		large set of KDE widgets
DISTNAME =		kwidgetsaddons-${VERSION}

SHARED_LIBS =		KF5WidgetsAddons	4.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m


TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
