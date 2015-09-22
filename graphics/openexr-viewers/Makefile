# $OpenBSD: Makefile,v 1.10 2015/09/22 18:41:06 pascal Exp $

COMMENT =		viewers for OpenEXR
V =			2.2.0
DISTNAME =		openexr_viewers-$V
PKGNAME =		${DISTNAME:S/_/-/}
SUBST_VARS +=		V

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU Half Iex IexMath IlmCtl IlmCtlMath IlmCtlSimd
WANTLIB += IlmImf IlmImfCtl IlmThread Imath X11 X11-xcb Xau Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xft Xinerama Xrender Xxf86vm
WANTLIB += c drm expat fltk fltk_gl fontconfig freetype glapi
WANTLIB += m pthread pthread-stubs stdc++ xcb xcb-dri2 xcb-glx
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=openexr/}

LIB_DEPENDS =		graphics/ctl \
			x11/fltk

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
