# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:55 sthen Exp $

COMMENT=	graphical display for the current uvm status

DISTNAME=	xuvmstat20050909
PKGNAME=	xuvmstat-20050909
REVISION=	3
CATEGORIES=     sysutils x11

PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c

MASTER_SITES=	http://www.netbsd.org/~chuck/gz/

WRKDIST=	${WRKDIR}/xuvmstat
MAKE_FLAGS=	CC="${CC}"
MAKE_ENV=	X11BASE="${X11BASE}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xuvmstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xuvmstat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xuvmstat

.include <bsd.port.mk>
