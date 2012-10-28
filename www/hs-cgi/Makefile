# $OpenBSD: Makefile,v 1.15 2012/10/28 23:31:33 kili Exp $

COMMENT =		CGI library for Haskell

DISTNAME =		cgi-3001.1.7.4
REVISION =		3
CATEGORIES =		www devel
HOMEPAGE =		http://andersk.mit.edu/haskell/cgi/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-network>=2.0 \
			devel/hs-parsec>=2.0


.include <bsd.port.mk>
