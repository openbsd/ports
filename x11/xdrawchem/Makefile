# $OpenBSD: Makefile,v 1.20 2015/05/05 17:00:21 sthen Exp $

COMMENT=	two-dimensional molecule drawing program

DISTNAME=	xdrawchem-1.9.9
REVISION=	7
CATEGORIES=	x11 biology

HOMEPAGE=	http://xdrawchem.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm c drm expat
WANTLIB += fontconfig freetype glapi jpeg lcms m mng openbabel>=4 png
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-dri2 xcb-glx z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xdrawchem/}

MODULES=	x11/qt3

LIB_DEPENDS =	misc/openbabel>=2.2.0

USE_GMAKE=	Yes

MAKE_FLAGS=	LDFLAGS+="-lqt-mt -pthread -L${X11BASE}/lib"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-qtincdir=${MODQT_INCDIR} \
		--with-qtlibdir=${MODQT_LIBDIR}

.include <bsd.port.mk>
