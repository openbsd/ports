# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 00:10:16 jasper Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-pinocchio/}

MODULES=		lang/python

NO_REGRESS=		Yes

SUBST_VARS=		MODPY_BIN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/pinocchio-ctl ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
