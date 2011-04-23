# $OpenBSD: Makefile,v 1.8 2011/04/23 14:32:51 kili Exp $

COMMENT =		Haskell bindings to cairo

DISTNAME =		cairo-0.12.0
REVISION =		0
CATEGORIES =		graphics

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =-f 'cairo_pdf cairo_ps cairo_svg'

BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/gtk2hs-buildtools

LIB_DEPENDS =		graphics/cairo
RUN_DEPENDS =		devel/hs-mtl \
			${LIB_DEPENDS}

.include <bsd.port.mk>
