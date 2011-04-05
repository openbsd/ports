# $OpenBSD: Makefile,v 1.10 2011/04/05 19:53:03 jasper Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
REVISION=		3

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-pinocchio/}

MODULES=		lang/python

USE_LIBTOOL=		No
USE_GMAKE=		No
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/pinocchio-ctl ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
