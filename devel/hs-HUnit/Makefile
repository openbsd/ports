# $OpenBSD: Makefile,v 1.9 2011/04/11 14:35:15 kili Exp $

COMMENT =		unit testing framework for Haskell

DISTNAME =		HUnit-1.2.2.3
CATEGORIES =		devel
HOMEPAGE =		http://hunit.sourceforge.net/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

WANTLIB =		c gmp m

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
