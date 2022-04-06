BROKEN =	does not build with Go 1.17

COMMENT =	deliver Go binaries as fast and easily as possible

MODGO_MODNAME =	github.com/goreleaser/goreleaser
MODGO_VERSION =	v1.7.0

HOMEPAGE =	https://goreleaser.com/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

DISTNAME =	goreleaser-${MODGO_VERSION}
REVISION =	0

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"

.include <bsd.port.mk>
