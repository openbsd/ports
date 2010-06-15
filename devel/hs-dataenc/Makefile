# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:51 kili Exp $

COMMENT =		data encoding library for Haskell

DISTNAME =		dataenc-0.13.0.2
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/haskellwiki/Library/Data_encoding

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
