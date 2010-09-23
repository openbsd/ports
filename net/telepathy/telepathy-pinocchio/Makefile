# $OpenBSD: Makefile,v 1.9 2010/09/23 14:24:22 jasper Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
REVISION=		3

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-pinocchio/}

MODULES=		lang/python

USE_LIBTOOL=		No
USE_GMAKE=		No
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/pinocchio-ctl ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
