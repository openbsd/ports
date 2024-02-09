COMMENT =	disk Usage/free utility

MODGO_MODNAME =	github.com/muesli/duf
MODGO_VERSION =	v0.8.1
REVISION =	0

DISTNAME =	duf-${MODGO_VERSION}
PKGNAME =	duf-0.8.1

CATEGORIES =	sysutils

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

# for patches; remove when no longer needed
WRKDIST =		${WRKSRC}

.include "modules.inc"
# updated from upstream's old version, also see patches
MODGO_MODULES +=        golang.org/x/sys        v0.15.0

.include <bsd.port.mk>
