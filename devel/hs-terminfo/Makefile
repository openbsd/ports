# $OpenBSD: Makefile,v 1.4 2013/01/20 18:03:47 kili Exp $

COMMENT = 		Haskell bindings to the terminfo library

DISTNAME =		terminfo-0.3.1.3
REVISION=		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
