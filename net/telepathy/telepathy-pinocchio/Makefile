# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:57 espie Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
REVISION=		5

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-pinocchio/}

MODULES=		lang/python

MODPY_ADJ_FILES=	bin/pinocchio-ctl

USE_GMAKE=		No
CONFIGURE_STYLE=	# empty
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
