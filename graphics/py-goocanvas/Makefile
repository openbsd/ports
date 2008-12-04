# $OpenBSD: Makefile,v 1.1.1.1 2008/12/04 22:21:32 jasper Exp $

COMMENT=		Python bindings for goocanvas

V=			0.10.0
DISTNAME=		pygoocanvas-$V
PKGNAME=		py-goocanvas-$V

CATEGORIES=		graphics

HOMEPAGE=		http://developer.berlios.de/projects/pygoocanvas/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=           ${MASTER_SITE_BERLIOS:=pygoocanvas/}

MODULES=		devel/gettext \
			lang/python

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

BUILD_DEPENDS=		::textproc/libxslt \
			::x11/py-gtk2
RUN_DEPENDS=		::x11/py-gtk2
LIB_DEPENDS=		goocanvas::graphics/goocanvas

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
