# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:30 sthen Exp $

COMMENT=	X11 trippy color-cycling toy

DISTNAME=	xtacy114
PKGNAME=	xtacy-1.14
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	http://www.gweep.net/~jer/

HOMEPAGE=	http://sidehack.gweep.net/~jer/xtacy.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m 

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/Xtacy

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xtacy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xtacy.man ${PREFIX}/man/man1/xtacy.1

.include <bsd.port.mk>
