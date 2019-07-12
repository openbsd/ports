# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:04 sthen Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
REVISION =	8
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext c iconv intl m pthread ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtGui ICE SM Xi Xinerama Xrender fontconfig freetype

COMPILER =		base-clang ports-gcc base-gcc

WRKDIST=	${WRKDIR}/beediff

MODULES=	devel/qmake \
		x11/qt4

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/beediff ${PREFIX}/bin

.include <bsd.port.mk>
