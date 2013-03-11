# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:24 espie Exp $

COMMENT=	Back Orifice Unix client by the cDc

PKGNAME=	bounix-1.21
DISTNAME=	bo121unix

CATEGORIES=     security

MASTER_SITES=	http://orifice.rotten.com/cDc/ \
		http://www.cultdeadcow.com/tools/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/bo

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bounix ${PREFIX}/bin

.include <bsd.port.mk>
