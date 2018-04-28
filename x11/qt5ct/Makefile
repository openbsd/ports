# $OpenBSD: Makefile,v 1.1.1.1 2018/04/28 14:45:21 landry Exp $

COMMENT =	Qt5 configuration tool

DISTNAME =	qt5ct-0.34
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/qmake x11/qt5

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qt5ct/}
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c m

.include <bsd.port.mk>
