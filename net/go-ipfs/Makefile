BROKEN =	needs update - vendored quic-go does not support Go 1.20
COMMENT =	IPFS implementation in Go

MODGO_MODNAME =	github.com/ipfs/kubo
MODGO_VERSION =	v0.16.0

DISTNAME =	kubo-${MODGO_VERSION}

CATEGORIES =	net
HOMEPAGE =	https://ipfs.tech/

# both MIT and Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
SUBST_VARS =	VARBASE

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
