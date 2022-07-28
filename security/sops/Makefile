COMMENT =	tool for managing secrets

MODGO_MODNAME =	go.mozilla.org/sops/v3
MODGO_VERSION =	v3.7.3

DISTNAME =	sops-${MODGO_VERSION}

CATEGORIES =	security

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/mozilla/sops

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
