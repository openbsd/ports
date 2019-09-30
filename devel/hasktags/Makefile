# $OpenBSD: Makefile,v 1.10 2019/09/30 12:51:25 kili Exp $

COMMENT =	ctags-like tool for Haskell sources

DISTNAME =	hasktags-0.68.2
REVISION =	1
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

.include <bsd.port.mk>
