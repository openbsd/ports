# $OpenBSD: Makefile,v 1.18 2017/07/16 19:18:50 espie Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
REVISION =	5
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext c m pthread ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtGui ICE SM Xi Xinerama Xrender fontconfig freetype

WRKDIST=	${WRKDIR}/beediff

MODULES=	devel/gettext \
		devel/qmake \
		x11/qt4

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/beediff ${PREFIX}/bin

.include <bsd.port.mk>
