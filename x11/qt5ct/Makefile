# $OpenBSD: Makefile,v 1.3 2018/06/27 21:04:22 espie Exp $

COMMENT =	Qt5 configuration tool

DISTNAME =	qt5ct-0.35
EXTRACT_SUFX =	.tar.bz2
REVISION =	0

CATEGORIES =	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/qmake x11/qt5

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qt5ct/}
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c m

.include <bsd.port.mk>
