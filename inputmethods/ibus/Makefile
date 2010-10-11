# $OpenBSD: Makefile,v 1.7 2010/10/11 08:15:01 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	intelligent input bus framework

DISTNAME =	ibus-1.3.7

REVISION =	5

SHARED_LIBS =	ibus	0.0	# 2.0

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	http://code.google.com/p/ibus/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c \
		cairo dbus-1 dbus-glib-1 expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs xcb xcb-render xcb-render-util z

MASTER_SITES =	http://ibus.googlecode.com/files/

MODULES =	devel/gconf2 \
		devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	::devel/iso-codes \
		::x11/dbus-python
RUN_DEPENDS =	::devel/iso-codes \
		::devel/desktop-file-utils \
		::devel/py-notify \
		::devel/py-xdg \
		::sysutils/gamin,-server,no_python \
		::x11/dbus-python \
		::x11/gnome/librsvg

MODGCONF2_SCHEMAS_DIR = ibus

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
	 	 --disable-silent-rules \
		 --disable-vala \
		 --enable-introspection=no \
		 --enable-gtk-doc-html=no
CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ibus
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/ibus

.include <bsd.port.mk>
