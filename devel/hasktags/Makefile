COMMENT =	ctags-like tool for Haskell sources

MODCABAL_STEM =		hasktags
MODCABAL_VERSION =	0.73.0
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		devel/cabal
MODCABAL_REVISION =	2

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

.include "cabal.inc"

.include <bsd.port.mk>
