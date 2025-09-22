COMMENT =	disk usage/free utility

MODGO_MODNAME =	github.com/muesli/duf
MODGO_VERSION =	v0.9.1

DISTNAME =	duf-${MODGO_VERSION}

CATEGORIES =	sysutils

MAINTAINER =	Gonzalo L. R. <gonzalo@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

NO_TEST =	Yes

# for patches; remove when no longer needed
WRKDIST =	${WRKSRC}

pre-configure:
	sed -i 's/DUF_VERSION/${MODGO_VERSION:S/v//}/' ${WRKSRC}/main.go

.include "modules.inc"

.include <bsd.port.mk>
