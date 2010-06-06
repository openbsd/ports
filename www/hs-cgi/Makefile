# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:45 kili Exp $

COMMENT =		CGI library for Haskell

DISTNAME =		cgi-3001.1.7.2
PKGNAME =		hs-${DISTNAME}p2
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


.include <bsd.port.mk>
