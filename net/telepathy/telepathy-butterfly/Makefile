# $OpenBSD: Makefile,v 1.9 2009/03/24 20:07:05 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.3.3
PKGNAME=		${DISTNAME}p3

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		devel/waf

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:telepathy-python->=0.15.6:net/telepathy/telepathy-python

pre-configure:
			${SUBST_CMD} ${WRKSRC}/butterfly/wscript

NO_REGRESS=		Yes

.include <bsd.port.mk>
