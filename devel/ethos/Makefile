# $OpenBSD: Makefile,v 1.23 2013/03/11 10:50:03 espie Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=      "-DG_CONST_RETURN=const"

COMMENT =	plugin framework library

VERSION =	0.2.2
DISTNAME =	ethos-${VERSION}
REVISION =	11

SHARED_LIBS=	ethos-1.0 1.0 \
		ethos-ui-1.0 0.0

CATEGORIES =	devel

HOMEPAGE =	http://git.dronelabs.com/ethos/about/
MASTER_SITES =	http://ftp.dronelabs.com/sources/ethos/0.2/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-shave \
			--disable-glibtest \
			--enable-introspection

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

MODULES =	lang/python \
		devel/gettext \
		textproc/intltool

BUILD_DEPENDS +=devel/gobject-introspection \
		${RUN_DEPENDS}

RUN_DEPENDS +=	x11/py-gtk2

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 gdk_pixbuf-2.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z ffi
WANTLIB += ${MODPY_WANTLIB} gtk-x11-2.0 gdk-x11-2.0
WANTLIB += GL gthread-2.0 xcb-render xcb-shm

.include <bsd.port.mk>
