# $OpenBSD: Makefile,v 1.18 2019/08/18 20:43:47 ajacoutot Exp $

COMMENT =		viewers for OpenEXR

V =			2.3.0
DISTNAME =		openexr_viewers-${V}
PKGNAME =		${DISTNAME:S/_/-/}
SUBST_VARS =		V

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU Half Iex IexMath IlmCtl IlmCtlMath
WANTLIB += IlmCtlSimd IlmImf IlmImfCtl IlmThread Imath X11 X11-xcb
WANTLIB += Xau Xcursor Xdamage Xdmcp Xext Xfixes Xft Xinerama
WANTLIB += Xrender Xxf86vm c drm expat fltk fltk_gl fontconfig
WANTLIB += freetype glapi m xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-sync xcb-xfixes xshmfence z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/openexr/openexr/releases/download/v${V}/

LIB_DEPENDS =		graphics/ctl \
			x11/fltk

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
