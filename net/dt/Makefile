COMMENT =		display various information about DNS domain

MODGO_MODNAME =		github.com/42wim/dt
MODGO_VERSION =		v1.0.2

DISTNAME =		dt-${MODGO_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://github.com/42wim/dt

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

WANTLIB +=		c pthread

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

post-extract:
	rm -rf ${WRKSRC}/vendor

.include "modules.inc"
.include <bsd.port.mk>
