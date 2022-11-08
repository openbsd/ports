BROKEN =	error during build "quic-go doesn't build on Go 1.18 yet"

COMMENT =	global, versioned, peer-to-peer filesystem

MODGO_MODNAME =	github.com/ipfs/go-ipfs
MODGO_VERSION =	v0.11.0

DISTNAME =	go-ipfs-${MODGO_VERSION}
REVISION =	2

CATEGORIES =	net
HOMEPAGE =	https://ipfs.io

# both MIT and Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
SUBST_VARS =	VARBASE

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
