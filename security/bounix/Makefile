# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:00 sthen Exp $

COMMENT=	Back Orifice Unix client by the cDc

PKGNAME=	bounix-1.21
DISTNAME=	bo121unix

CATEGORIES=     security

MASTER_SITES=	http://orifice.rotten.com/cDc/ \
		http://www.cultdeadcow.com/tools/

PERMIT_PACKAGE=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/bo

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bounix ${PREFIX}/bin

.include <bsd.port.mk>
