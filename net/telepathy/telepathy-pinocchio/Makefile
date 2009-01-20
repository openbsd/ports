# $OpenBSD: Makefile,v 1.3 2009/01/20 10:43:53 jasper Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-pinocchio/}

MODULES=		lang/python

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/pinocchio-ctl ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
