# $OpenBSD: Makefile,v 1.1.1.1 2006/06/14 13:58:38 steven Exp $

COMMENT=	"OpenGL extension to GTK+ 2.0 and later"

DISTNAME=	gtkglext-1.2.0
SHARED_LIBS=	gdkglext-x11-1.0	0.0 \
		gtkglext-x11-1.0	0.0
CATEGORIES=	x11 graphics devel

HOMEPAGE=	http://www.k-3d.org/gtkglext/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkglext/}

WANTLIB=	GL GLU ICE SM X11 Xext Xmu Xrender Xt m z \
		gmodule-2.0.0.0 glib-2.0.0.0 intl iconv png cairo \
		pangocairo-1.0.0.0 pango-1.0.0.0 gobject-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 gdk-x11-2.0.0.0 freetype fontconfig \
		pangoft2-1.0.0.0 pangox-1.0.0.0 atk-1.0.0.0 glitz

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.0.0::x11/gtk+2

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

EXAMPLE_DIR=	${PREFIX}/share/examples/gtkglext

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.{c,h,lwo,rgb} ${EXAMPLE_DIR}

.include <bsd.port.mk>
