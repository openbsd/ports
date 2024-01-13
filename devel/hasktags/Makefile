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
MODCABAL_MANIFEST = \
	ansi-terminal	1.0	0	\
	ansi-terminal-types	0.11.5	1	\
	colour	2.3.6	0	\
	hashable	1.4.3.0	1	\
	json	0.11	0	\
	microlens	0.4.13.1	1	\
	microlens-ghc	0.4.14.2	0	\
	microlens-mtl	0.2.0.3	1	\
	microlens-platform	0.4.3.4	0	\
	microlens-th	0.4.3.14	0	\
	optparse-applicative	0.18.1.0	0	\
	prettyprinter	1.7.1	0	\
	prettyprinter-ansi-terminal	1.1.3	0	\
	primitive	0.9.0.0	0	\
	syb	0.7.2.4	0	\
	th-abstraction	0.6.0.0	1	\
	transformers-compat	0.7.2	0	\
	unordered-containers	0.2.19.1	3	\
	utf8-string	1.0.2	0	\
	vector	0.13.1.0	0	\
	vector-stream	0.1.0.0	3	\

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

.include <bsd.port.mk>
