# $OpenBSD: Makefile,v 1.5 2010/06/15 17:59:24 kili Exp $

COMMENT =		unit testing framework for Haskell

DISTNAME =		HUnit-1.2.2.1
PKGNAME =		hs-${DISTNAME}p3
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

post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>
