# $OpenBSD: Makefile,v 1.2 2010/09/22 12:50:32 ajacoutot Exp $

COMMENT =		viewers for OpenEXR
DISTNAME =		openexr_viewers-1.0.1
PKGNAME =		${DISTNAME:S/_/-/}

REVISION =		0

CATEGORIES =		graphics
HOMEPAGE =		http://www.openexr.com/

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLU Half Iex IlmCtl IlmCtlMath IlmCtlSimd IlmImf
WANTLIB += IlmThread Imath X11 Xau Xdmcp Xext c m pthread pthread-stubs
WANTLIB += stdc++ xcb z IlmImfCtl fltk fltk_gl

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=openexr/}

LIB_DEPENDS =		::graphics/openexr-ctl \
			::x11/fltk

SEPARATE_BUILD =	concurrent

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
