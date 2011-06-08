# $OpenBSD: Makefile,v 1.12 2011/06/08 18:03:52 jasper Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
REVISION=		4

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-pinocchio/}

MODULES=		lang/python

MODPY_ADJ_FILES=	bin/pinocchio-ctl

USE_LIBTOOL=		No
USE_GMAKE=		No
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
