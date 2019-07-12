# $OpenBSD: Makefile,v 1.26 2019/07/12 20:47:03 sthen Exp $

COMMENT=	GUI widget library used in MakeHuman

DISTNAME=	mhgui-0.2
CATEGORIES=	graphics
REVISION=	6

SHARED_LIBS +=  mhgui                1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE SM X11 X11-xcb Xdamage Xext
WANTLIB += Xfixes Xi Xmu Xrandr Xrender Xt Xxf86vm animorph drm expat
WANTLIB += glapi glut m png pthread xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-sync xcb-xfixes xshmfence z

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

LIB_DEPENDS=	graphics/animorph>=0.3 \
		graphics/freeglut \
		graphics/png

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/GL" \
		LDFLAGS="-L${LOCALBASE}/lib -lz -lm"

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -r ${PREFIX}/share/doc

.include <bsd.port.mk>
