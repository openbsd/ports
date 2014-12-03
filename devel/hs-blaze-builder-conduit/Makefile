# $OpenBSD: Makefile,v 1.6 2014/12/03 21:56:43 kili Exp $

COMMENT =		convert streams of builders to streams of bytestrings

DISTNAME =		blaze-builder-conduit-1.0.0
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-conduit>=1.0,<1.1 \
			devel/hs-text>=0.11

.include <bsd.port.mk>
