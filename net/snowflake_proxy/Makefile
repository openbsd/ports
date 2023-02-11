COMMENT=	anti-censorship proxy and pluggable transports for Tor

MODGO_MODNAME=	git.torproject.org/pluggable-transports/snowflake.git/v2
V=		2.5.1
MODGO_VERSION=	v$V

DISTNAME=	snowflake.git-${MODGO_VERSION}
PKGNAME=	snowflake_proxy-$V

CATEGORIES=	net

HOMEPAGE=	https://snowflake.torproject.org/

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

# BSD
PERMIT_PACKAGE= Yes

WANTLIB += c pthread

MODULES=	lang/go
ALL_TARGET=	./proxy/ ./client/ ./server/

# done as a sed instead of patch because the path includes the version number
post-extract:
	sed -i 's/Relayed ↑ %v %v, ↓ %v %v/Relayed IN %v %v, OUT %v %v/' \
	    ${WRKSRC}/proxy/lib/pt_event_logger.go

post-install:
.for i in proxy client server
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/snowflake_$i
.endfor

.include "modules.inc"
.include <bsd.port.mk>
