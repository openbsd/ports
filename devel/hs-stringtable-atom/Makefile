# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:40:36 kili Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.6.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-binary

.include <bsd.port.mk>
