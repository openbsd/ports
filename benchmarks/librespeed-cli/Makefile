ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =		command line client for LibreSpeed

MODGO_MODNAME =		github.com/librespeed/speedtest-cli
MODGO_VERSION =		v1.0.13
REVISION =		0

DISTNAME =		librespeed-cli-${MODGO_VERSION}

CATEGORIES =		benchmarks

HOMEPAGE =		https://librespeed.org

MAINTAINER =		Christoph Liebender <christoph@liebender.dev>

# LGPL-3.0
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB +=		c pthread

MODULES =		lang/go

SEPARATE_BUILD =	Yes

# patches
WRKDIST =		${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/speedtest-cli \
		${PREFIX}/bin/librespeed-cli

.include "modules.inc"

.include <bsd.port.mk>
