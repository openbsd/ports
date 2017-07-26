# $OpenBSD: Makefile,v 1.13 2017/07/26 22:45:24 sthen Exp $

COMMENT =		viewers for OpenEXR
V =			2.2.0
DISTNAME =		openexr_viewers-$V
PKGNAME =		${DISTNAME:S/_/-/}
SUBST_VARS +=		V
REVISION =		0

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU Half Iex IexMath IlmCtl IlmCtlMath IlmCtlSimd
WANTLIB += IlmImf IlmImfCtl IlmThread Imath X11 X11-xcb Xau Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xft Xinerama Xrender Xxf86vm
WANTLIB += c drm expat fltk fltk_gl fontconfig freetype glapi
WANTLIB += m pthread pthread-stubs ${COMPILER_LIBCXX} xcb xcb-dri2 xcb-glx
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=openexr/}

LIB_DEPENDS =		graphics/ctl \
			x11/fltk

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
