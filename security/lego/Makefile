COMMENT =		Let's Encrypt/ACME client written in Go

MODGO_MODNAME =		github.com/go-acme/lego/v4
MODGO_VERSION =		v4.18.0

DISTNAME =		lego-${MODGO_VERSION}
CATEGORIES =		security

HOMEPAGE =		https://go-acme.github.io/lego/

MAINTAINER =		Horia Racoviceanu <horia@racoviceanu.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.version=${MODGO_VERSION}"

# Some tests fail with DNS errors (network not available)
NO_TEST =		Yes

.include "modules.inc"

.include <bsd.port.mk>
