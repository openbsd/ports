COMMENT =	build, test, and manage your Stripe integration

V =		1.31.0
MODGO_MODNAME =	github.com/stripe/stripe-cli
MODGO_VERSION =	v${V}

DISTNAME =	stripe-cli-${MODGO_VERSION}
PKGNAME =	stripe-cli-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://stripe.com/docs/cli

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

.include "modules.inc"
.include <bsd.port.mk>
