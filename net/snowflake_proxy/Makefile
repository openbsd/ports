# $OpenBSD: Makefile,v 1.4 2022/03/01 09:58:04 sthen Exp $

COMMENT=	proxy providing Tor access to others with censored net

MODGO_MODNAME=	git.torproject.org/pluggable-transports/snowflake.git/v2
V=		2.1.0
REVISION=	2
MODGO_VERSION=	v$V

DISTNAME=	snowflake.git-${MODGO_VERSION}
PKGNAME=	snowflake_proxy-$V

CATEGORIES=	net

HOMEPAGE=	https://snowflake.torproject.org/

# BSD
PERMIT_PACKAGE= Yes

WANTLIB += c pthread

MODULES=	lang/go
ALL_TARGET=	 ./proxy/

# done as a sed instead of patch because the path includes the version number
post-extract:
	sed -i 's/Relayed ↑ %v %v, ↓ %v %v/Relayed IN %v %v, OUT %v %v/' \
	    ${WRKSRC}/proxy/lib/pt_event_logger.go

post-install:
	cd ${PREFIX}/bin && mv proxy snowflake_proxy

.include "modules.inc"
.include <bsd.port.mk>
