# $OpenBSD: Makefile,v 1.7 2009/01/26 19:49:25 landry Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.3.3
PKGNAME=		${DISTNAME}p1

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		devel/waf

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:telepathy-python->=0.15.6:net/telepathy/telepathy-python

pre-configure:
			${SUBST_CMD} ${WRKSRC}/butterfly/wscript

NO_REGRESS=		Yes

.include <bsd.port.mk>
