# $OpenBSD: Makefile,v 1.5 2010/11/03 22:16:39 kili Exp $

COMMENT =		Haskell bindings to cairo

DISTNAME =		cairo-0.11.1
REVISION =		1
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

BUILD_DEPENDS =		::devel/gtk2hs-buildtools

LIB_DEPENDS =		::graphics/cairo
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
