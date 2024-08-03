COMMENT =	terminal file manager

MODGO_MODNAME = github.com/antonmedv/walk
MODGO_VERSION = v1.10.0

DISTNAME =	walk-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/antonmedv/walk

MAINTAINER =	Gonzalo L. Rodriguez <gonzalo@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

post-install:
	cd ${PREFIX}/bin && ln -s walk llama

.include "modules.inc"

.include <bsd.port.mk>
