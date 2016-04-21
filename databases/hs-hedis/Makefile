# $OpenBSD: Makefile,v 1.16 2016/04/21 08:03:33 dcoppa Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.8.0
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KRqtlUVFWuE4DnqMR5iXAb

RUN_DEPENDS +=		textproc/hs-scanner>=0.2 \
			textproc/hs-bytestring-lexing>=0.5 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.0 \
			databases/hs-resource-pool>=0.2 \
			devel/hs-vector>=0.9

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
