# $OpenBSD: Makefile,v 1.27 2017/11/08 18:58:40 kili Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.9.9
REVISION =		0
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IyPGL0DaWEwC4paZvX9qp5

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
