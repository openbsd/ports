# $OpenBSD: Makefile,v 1.9 2010/11/03 22:18:39 kili Exp $

COMMENT =		CGI library for Haskell

DISTNAME =		cgi-3001.1.7.3
REVISION =		1
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

LIB_DEPENDS =		:hs-network->=2.0:devel/hs-network \
			:hs-parsec->=2.0:devel/hs-parsec \
			:hs-xhtml->=3000.0.0:www/hs-xhtml
RUN_DEPENDS =		${LIB_DEPENDS}


.include <bsd.port.mk>
