COMMENT =		a "look-like nothing" obfuscation protocol for TCP

MODGO_MODNAME =		gitlab.com/yawning/obfs4.git

# https://gitlab.com/yawning/obfs4/-/commit/77af0cba934d
# commit 77af0cba934d73c4baeb709560bcfc9a9fbc661c
# build: Do the release ritual for obfs4proxy-0.0.13
MODGO_VERSION =		v0.0.0-20220204003609-77af0cba934d

DISTNAME =		obfs4.git-${MODGO_VERSION}

PKGNAME =		obfs4proxy-0.0.13
REVISION =		0

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
