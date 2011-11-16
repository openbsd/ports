# $OpenBSD: Makefile,v 1.1.1.1 2011/11/16 14:16:13 kili Exp $

COMMENT =		generic HTTP types for Haskell

DISTNAME =		http-types-0.6.6
CATEGORIES =		devel www

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-blaze-builder \
			devel/hs-case-insensitive \
			devel/hs-text

.include <bsd.port.mk>
