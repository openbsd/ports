# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:24 espie Exp $

COMMENT=	provide cryptographic tunnel

DISTNAME=	ctunnel-0.4
CATEGORIES=	security
REVISION=	0

HOMEPAGE=	http://nardcore.org/ctunnel/

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB= 	c crypto pthread z

NO_TEST=	Yes

USE_GMAKE=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ctunnel
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ctunnel/

.include <bsd.port.mk>
