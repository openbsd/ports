# $OpenBSD: Makefile,v 1.26 2017/08/17 07:48:27 dcoppa Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.9.9
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	19etzEatxW57LkQMx7WKvd

RUN_DEPENDS +=		textproc/hs-scanner>=0.2 \
			devel/hs-async>=2.1 \
			textproc/hs-bytestring-lexing>=0.5 \
			devel/hs-unordered-containers \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.0 \
			databases/hs-resource-pool>=0.2 \
			devel/hs-stm \
			devel/hs-vector>=0.9

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
