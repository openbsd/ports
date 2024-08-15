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

# disable https://go.dev/doc/go1.23#linker to unbreak with go-1.23.
# remove once upstream unhibernates and updates the outdated x/net
# or once we can finally patch go ports.
MODGO_LDFLAGS += -checklinkname=0

post-extract:
	rm -rf ${WRKSRC}/vendor

.include "modules.inc"
.include <bsd.port.mk>
