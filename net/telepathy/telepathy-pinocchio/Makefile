# $OpenBSD: Makefile,v 1.15 2012/11/17 09:40:41 ajacoutot Exp $

COMMENT=		connection manager meant for testing Telepathy

DISTNAME=		telepathy-pinocchio-0.3.1
REVISION=		5

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-pinocchio/}

MODULES=		lang/python

MODPY_ADJ_FILES=	bin/pinocchio-ctl

USE_GMAKE=		No
CONFIGURE_STYLE=	# empty
NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pinocchio/common.py

.include <bsd.port.mk>
