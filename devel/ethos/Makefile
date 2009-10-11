# $OpenBSD: Makefile,v 1.1.1.1 2009/10/11 11:31:13 landry Exp $

COMMENT =	plugin framework library

VERSION =	0.2.0
DISTNAME =	ethos-${VERSION}

SHARED_LIBS=	cloader 0.0 \
		pythonloader 0.0 \
		ethos-1.0 0.0 \
		ethos-ui-1.0 0.0

CATEGORIES =	devel

HOMEPAGE =	http://git.dronelabs.com/ethos/about/
MASTER_SITES =	http://ftp.dronelabs.com/sources/ethos/0.2/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-glibtest
USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

MODULES =	lang/python \
		devel/gettext

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

post-extract:
	cp files/ethos-c-plugin-loader.h ${WRKSRC}/plugin-loaders/c/
	cp files/ethos-python-plugin-loader.h ${WRKSRC}/plugin-loaders/python/

.include <bsd.port.mk>
