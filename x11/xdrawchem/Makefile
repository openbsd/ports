# $OpenBSD: Makefile,v 1.18 2013/11/25 14:16:24 sthen Exp $

COMMENT=	two-dimensional molecule drawing program

DISTNAME=	xdrawchem-1.9.9
REVISION=	5
CATEGORIES=	x11 biology

HOMEPAGE=	http://xdrawchem.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xdrawchem/}

WANTLIB =	GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB +=	Xmu Xrandr Xrender Xt Xxf86vm c drm expat fontconfig
WANTLIB +=	freetype jpeg lcms m mng png pthread pthread-stubs stdc++ xcb z

MODULES=	x11/qt3

LIB_DEPENDS =	misc/openbabel>=2.2.0
WANTLIB +=	openbabel>=4

USE_GMAKE=	Yes

MAKE_FLAGS=	LDFLAGS+="-lqt-mt -pthread -L${X11BASE}/lib"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-qtincdir=${MODQT_INCDIR} \
		--with-qtlibdir=${MODQT_LIBDIR}

.include <bsd.port.mk>
