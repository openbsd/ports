# $OpenBSD: Makefile,v 1.3 2013/01/20 18:05:35 kili Exp $

COMMENT =		platform independent entropy source

DISTNAME =		entropy-0.2.1
REVISION =		1
CATEGORIES =		security

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
