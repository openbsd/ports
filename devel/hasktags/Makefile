# $OpenBSD: Makefile,v 1.8 2016/09/13 14:40:29 naddy Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.2
REVISION =	1
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c iconv m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv

.include <bsd.port.mk>
