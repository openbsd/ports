# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:06 espie Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.2
REVISION =	0
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

.include <bsd.port.mk>
