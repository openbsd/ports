# $OpenBSD: Makefile,v 1.8 2009/08/11 08:39:39 ajacoutot Exp $

COMMENT=	nautilus Python bindings

GNOME_PROJECT=	nautilus-python
GNOME_VERSION=	0.5.1
PKGNAME=	py-nautilus-${GNOME_VERSION}p5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 pthread-stubs xcb \
		bonobo-activation bonoboui-2 cairo crypto dbus-1 \
		dbus-glib-1 eel-2 expat fontconfig freetype \
		gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-desktop-2 gnome-keyring gnomecanvas-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt ssl startup-notification-1 util xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		nautilus-extension.>=2::x11/gnome/nautilus
RUN_DEPENDS=	::x11/gnome/py-gnome

USE_X11=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -pthread -lutil"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

FAKE_FLAGS=	examplesdir=${PREFIX}/share/examples/py-nautilus \
		docsdir=${PREFIX}/share/doc/py-nautilus

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

.include <bsd.port.mk>
