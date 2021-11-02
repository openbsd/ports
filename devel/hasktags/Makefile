# $OpenBSD: Makefile,v 1.13 2021/11/02 04:08:36 gnezdo Exp $

COMMENT =	ctags-like tool for Haskell sources

MODCABAL_STEM =		hasktags
MODCABAL_VERSION =	0.72.0
CATEGORIES =	devel

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util

MODULES =		devel/cabal
MODCABAL_REVISION =	1
MODCABAL_MANIFEST = \
	ansi-terminal	0.11	0	\
	ansi-wl-pprint	0.6.9	2	\
	colour	2.3.6	0	\
	hashable	1.3.4.1	0	\
	json	0.10	1	\
	microlens	0.4.12.0	0	\
	microlens-ghc	0.4.13	0	\
	microlens-mtl	0.2.0.1	0	\
	microlens-platform	0.4.2	0	\
	microlens-th	0.4.3.10	0	\
	optparse-applicative	0.16.1.0	1	\
	primitive	0.7.2.0	0	\
	syb	0.7.2.1	0	\
	th-abstraction	0.4.3.0	0	\
	transformers-compat	0.7	0	\
	unordered-containers	0.2.14.0	0	\
	utf8-string	1.0.2	0	\
	vector	0.12.3.1	0	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

.include <bsd.port.mk>
