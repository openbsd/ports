# $OpenBSD: Makefile,v 1.17 2013/03/11 11:20:27 espie Exp $

COMMENT =		manipulating Haskell source code

DISTNAME =		haskell-src-1.0.1.5
REVISION =		1
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		devel/happy \
			${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-syb

.include <bsd.port.mk>
