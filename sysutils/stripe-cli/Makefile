COMMENT =	build, test, and manage your Stripe integration

MODGO_MODNAME =	github.com/stripe/stripe-cli
MODGO_VERSION =	v1.37.2

DISTNAME =	stripe-cli-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://stripe.com/docs/cli

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

.include "modules.inc"
.include <bsd.port.mk>
