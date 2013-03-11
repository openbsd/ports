# $OpenBSD: Makefile,v 1.14 2013/03/11 11:10:53 espie Exp $

COMMENT =		Haskell bindings to cairo

DISTNAME =		cairo-0.12.3.1
REVISION =		2
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
			${LIB_DEPENDS}

.include <bsd.port.mk>
