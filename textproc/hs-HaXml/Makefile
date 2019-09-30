# $OpenBSD: Makefile,v 1.38 2019/09/30 12:35:56 kili Exp $

COMMENT =		utilities for manipulating XML documents

DISTNAME =		HaXml-1.25.5
CATEGORIES =		textproc
HOMEPAGE =		http://projects.haskell.org/HaXml/

WANTLIB =		c charset ffi gmp iconv m pthread util

# GPLv2 / LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6cJLgDXXuHB5KvgaH0eUef

LIB_DEPENDS +=		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS +=		devel/hs-random \
			textproc/hs-polyparse>=1.10
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
