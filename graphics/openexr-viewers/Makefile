# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 12:33:26 jasper Exp $

COMMENT =		viewers for OpenEXR
DISTNAME =		openexr_viewers-1.0.1
PKGNAME =		${DISTNAME:S/_/-/}

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU Half Iex IlmCtl IlmCtlMath IlmCtlSimd IlmImf
WANTLIB += IlmThread Imath X11 Xau Xdmcp Xext c m pthread pthread-stubs
WANTLIB += stdc++ xcb z

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=openexr/}

LIB_DEPENDS =		IlmImfCtl::graphics/openexr-ctl \
			fltk,fltk_gl::x11/fltk

SEPARATE_BUILD =	concurrent

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
