# $OpenBSD: Makefile,v 1.1.1.1 2022/02/28 16:54:13 sthen Exp $

COMMENT=	proxy providing Tor access to others with censored net

MODGO_MODNAME=	git.torproject.org/pluggable-transports/snowflake.git/v2
V=		2.1.0
MODGO_VERSION=	v$V

DISTNAME=	snowflake.git-${MODGO_VERSION}
PKGNAME=	snowflake_proxy-$V

CATEGORIES=	net

HOMEPAGE=	https://snowflake.torproject.org/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/go
ALL_TARGET=	 ./proxy/

post-install:
	cd ${PREFIX}/bin && mv proxy snowflake_proxy

.include "modules.inc"
.include <bsd.port.mk>
