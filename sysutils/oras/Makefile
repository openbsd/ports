COMMENT =	OCI registry client

V =		1.3.2
MODGO_MODNAME =	github.com/oras-project/oras
MODGO_VERSION =	v$V

DISTNAME =	oras-${MODGO_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://oras.land

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

USE_GMAKE =	Yes

.include "modules.inc"
.include <bsd.port.mk>
