# $OpenBSD: Makefile,v 1.58 2009/08/10 06:31:44 kili Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

COMMENT=	image manipulation library for X11

V=		1.9.14
DISTNAME=	imlib-${V}
PKGNAME=	imlib-${V}p8
SHARED_LIBS=	Imlib		19.14	\
		gdk_imlib	19.14
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/imlib/1.9/}

MODULES=	devel/gettext
LIB_DEPENDS= 	gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
		jpeg.>=62::graphics/jpeg \
		ungif.>=5::graphics/libungif \
		png.>=2::graphics/png \
		tiff.>=35::graphics/tiff

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xi c glib gmodule m \
			pthread-stubs xcb z

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-modules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
