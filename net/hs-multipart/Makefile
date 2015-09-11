# $OpenBSD: Makefile,v 1.1.1.1 2015/09/11 18:58:28 kili Exp $

COMMENT =		HTTP multipart library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		multipart-0.1.2
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	IZ2tSdLrN676asJsvkwDSs

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-parsec>=2.0

.include <bsd.port.mk>
