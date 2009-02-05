# $OpenBSD: Makefile,v 1.8 2009/02/05 22:22:33 landry Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.3.3
PKGNAME=		${DISTNAME}p2

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		devel/waf

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:telepathy-python->=0.15.6:net/telepathy/telepathy-python

pre-configure:
			${SUBST_CMD} ${WRKSRC}/butterfly/wscript

NO_REGRESS=		Yes

.include <bsd.port.mk>
