COMMENT =	Vultr Command Line Interface

MODGO_MODNAME =	github.com/vultr/vultr-cli/v3
MODGO_VERSION =	v3.0.3

DISTNAME =	vultr-cli-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://www.vultr.com/

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

do-build:
	cd ${WRKSRC} && \
		rm -rf vendor && \
		${MODGO_BUILD_CMD}

.include "modules.inc"

.include <bsd.port.mk>
