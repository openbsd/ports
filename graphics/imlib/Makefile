# $OpenBSD: Makefile,v 1.70 2013/06/04 18:41:48 naddy Exp $

COMMENT=	image manipulation library for X11

V=		1.9.14
DISTNAME=	imlib-${V}
REVISION =	10
SHARED_LIBS=	Imlib		19.14	\
		gdk_imlib	19.14
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/imlib/1.9/}

MODULES=	devel/gettext
LIB_DEPENDS= 	x11/gtk+ \
		graphics/jpeg \
		graphics/libungif \
		graphics/png \
		graphics/tiff

WANTLIB=	ICE SM X11 Xext Xi c glib gmodule m \
		xcb z gtk>=1.2 gdk>=1.2 jpeg>=62 \
		ungif>=5 png>=2 tiff>=35
# GPL
PERMIT_PACKAGE_CDROM=	Yes

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
