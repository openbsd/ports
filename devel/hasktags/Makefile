# $OpenBSD: Makefile,v 1.1.1.1 2011/04/13 13:31:11 kili Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.1
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
