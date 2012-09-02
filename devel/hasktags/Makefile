# $OpenBSD: Makefile,v 1.4 2012/09/02 21:53:10 kili Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.2
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		c gmp m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		devel/gmp

.include <bsd.port.mk>
