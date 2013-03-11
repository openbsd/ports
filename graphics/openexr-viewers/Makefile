# $OpenBSD: Makefile,v 1.6 2013/03/11 11:10:54 espie Exp $

COMMENT =		viewers for OpenEXR
DISTNAME =		openexr_viewers-1.0.1
PKGNAME =		${DISTNAME:S/_/-/}

REVISION =		1

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU Half Iex IlmCtl IlmCtlMath IlmCtlSimd IlmImf
WANTLIB += IlmThread Imath X11 Xau Xdmcp Xext c m pthread
WANTLIB += stdc++ xcb z IlmImfCtl fltk fltk_gl
WANTLIB += Xdamage Xfixes Xxf86vm drm

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=openexr/}

LIB_DEPENDS =		graphics/openexr-ctl \
			x11/fltk

SEPARATE_BUILD =	Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
