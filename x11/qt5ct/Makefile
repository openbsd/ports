# $OpenBSD: Makefile,v 1.5 2019/05/05 17:52:54 rsadowski Exp $

COMMENT =	Qt5 configuration tool

DISTNAME =	qt5ct-0.39
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
