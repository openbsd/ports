# $OpenBSD: Makefile,v 1.6 2010/07/17 13:43:37 kili Exp $

COMMENT =		CGI library for Haskell

DISTNAME =		cgi-3001.1.7.2
REVISION =		4
CATEGORIES =		www devel
HOMEPAGE =		http://www.cs.uu.nl/~daan/parsec.html

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
