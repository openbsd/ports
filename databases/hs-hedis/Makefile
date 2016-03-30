# $OpenBSD: Makefile,v 1.15 2016/03/30 11:50:23 dcoppa Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.7.10
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	84mtPXk0nUTJYtEJiMMU9P

RUN_DEPENDS +=		textproc/hs-attoparsec>=0.12 \
			textproc/hs-bytestring-lexing>=0.5 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.0 \
			databases/hs-resource-pool>=0.2 \
			devel/hs-vector>=0.9

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
