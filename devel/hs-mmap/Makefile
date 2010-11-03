# $OpenBSD: Makefile,v 1.9 2010/11/03 22:13:38 kili Exp $

COMMENT =		mmap API for Haskell

DISTNAME =		mmap-0.5.6
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		::devel/hs-HUnit

.include <bsd.port.mk>
