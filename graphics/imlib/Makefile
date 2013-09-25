# $OpenBSD: Makefile,v 1.71 2013/09/25 07:56:58 sthen Exp $

# only used for kde/graphics3
COMMENT=	image manipulation library for X11

V=		1.9.14
DISTNAME=	imlib-${V}
REVISION=	11

SHARED_LIBS +=  gdk_imlib            19.14    # 19.14
SHARED_LIBS +=  Imlib                19.14    # 19.14

CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/imlib/1.9/}

# GPL/LGPL, see README
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xi c gdk gif>=6 glib gmodule
WANTLIB += gtk jpeg m png pthread-stubs tiff xcb z

MODULES=	devel/gettext
LIB_DEPENDS= 	x11/gtk+ \
		graphics/jpeg \
		graphics/giflib \
		graphics/png \
		graphics/tiff

USE_GMAKE=	Yes
USE_GROFF =	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-modules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
