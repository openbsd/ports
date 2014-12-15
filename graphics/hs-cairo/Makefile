# $OpenBSD: Makefile,v 1.15 2014/12/15 16:55:46 kili Exp $

COMMENT =		Haskell bindings to cairo

DISTNAME =		cairo-0.12.5.3
CATEGORIES =		graphics

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =-f 'cairo_pdf cairo_ps cairo_svg'

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gtk2hs-buildtools

LIB_DEPENDS =		graphics/cairo
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-utf8-string>=0.2,<0.4 \
			${LIB_DEPENDS}

.include <bsd.port.mk>
