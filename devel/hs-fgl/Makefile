# $OpenBSD: Makefile,v 1.21 2015/12/20 11:07:14 kili Exp $

BROKEN-i386 =		needs a fixed rts/Linker.c in ghc

COMMENT =		functional graph library

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		fgl-5.5.2.3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1PvuJSbzF40BnsvFgNAS4e

.include <bsd.port.mk>
