# $OpenBSD: Makefile,v 1.3 2012/10/28 23:29:19 kili Exp $

COMMENT = 		Haskell bindings to the terminfo library

DISTNAME =		terminfo-0.3.1.3
REVISION=		1
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
