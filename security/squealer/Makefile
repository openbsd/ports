COMMENT =		filesystem secrets scanner

MODGO_MODNAME =		github.com/owenrumney/squealer
MODGO_VERSION =		v1.2.11

DISTNAME =		squealer-${MODGO_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/owenrumney/squealer

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

WANTLIB +=		c pthread

# Unlicense
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WRKDIST =		${WRKSRC}

post-extract:
	rm -rf ${WRKSRC}/vendor

.include "modules.inc"
.include <bsd.port.mk>
