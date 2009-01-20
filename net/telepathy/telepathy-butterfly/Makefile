# $OpenBSD: Makefile,v 1.6 2009/01/20 10:43:53 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.3.3
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		devel/waf

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:telepathy-python->=0.15.6:net/telepathy/telepathy-python

NO_REGRESS=		Yes

.include <bsd.port.mk>
