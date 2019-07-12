# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:02 sthen Exp $

COMMENT =		ed25519 in go

GH_ACCOUNT =		agl
GH_PROJECT =		ed25519
GH_COMMIT = 		5312a61534124124185d41f09206b9fef1d88403
DISTNAME =		go-ed25519
PKGNAME =		${DISTNAME}-20170116

CATEGORIES =		security

HOMEPAGE =		https://github.com/agl/ed25519

MAINTAINER =		Sean Levy <attila@stalphonsos.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES +=		lang/go

MODGO_TYPE =		lib
WRKSRC =		${MODGO_WORKSPACE}/src/github.com/agl/ed25519
ALL_TARGET += 		github.com/agl/ed25519/edwards25519 \
			github.com/agl/ed25519/extra25519

BUILD_DEPENDS +=	security/go-crypto

.include <bsd.port.mk>
