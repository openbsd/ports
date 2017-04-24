# $OpenBSD: Makefile,v 1.18 2017/04/24 02:20:12 jca Exp $

COMMENT=	graphical display for the current uvm status

DISTNAME=	xuvmstat20050909
PKGNAME=	xuvmstat-20050909
REVISION=	2
CATEGORIES=     sysutils x11

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=	Yes

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
