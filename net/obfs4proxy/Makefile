COMMENT =		a "look-like nothing" obfuscation protocol for TCP

MODGO_MODNAME =		gitlab.com/yawning/obfs4.git

# https://gitlab.com/yawning/obfs4/-/commit/336a71d6
# commit 336a71d6e4cfd2d33e9c57797828007ad74975e9
# build: Do the release ritual for obfs4proxy-0.0.14
MODGO_VERSION =		v0.0.0-20220904064028-336a71d6e4cf

DISTNAME =		obfs4.git-${MODGO_VERSION}

PKGNAME =		obfs4proxy-0.0.14

CATEGORIES =		net www

HOMEPAGE =		https://gitlab.com/yawning/obfs4

MAINTAINER =		Sean Levy <attila@stalphonsos.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES +=		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 \
		${PREFIX}/man/man1/obfs4proxy.1

.include "modules.inc"
.include <bsd.port.mk>
