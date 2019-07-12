# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:11 sthen Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.2
REVISION =	1
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c iconv m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv

.include <bsd.port.mk>
