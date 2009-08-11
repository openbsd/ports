# $OpenBSD: Makefile,v 1.7 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	OpenGL extension to GTK+ 2.0 and later

DISTNAME=	gtkglext-1.2.0
PKGNAME=	${DISTNAME}p2
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

WANTLIB += GL GLU ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt atk-1.0
WANTLIB += cairo expat fontconfig freetype gio-2.0 glib-2.0 glitz
WANTLIB += gmodule-2.0 gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangox-1.0 pcre pixman-1 png z pthread-stubs xcb

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

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
