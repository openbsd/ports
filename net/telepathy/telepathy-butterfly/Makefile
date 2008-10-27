# $OpenBSD: Makefile,v 1.4 2008/10/27 00:04:23 jasper Exp $

COMMENT=		flexible communications framework, MSN component

DISTNAME=		telepathy-butterfly-0.3.2

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-butterfly/}

MODULES=		devel/waf

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::net/telepathy/telepathy-python

NO_REGRESS=		Yes

.include <bsd.port.mk>
