# $OpenBSD: Makefile,v 1.33 2010/10/18 13:18:13 jasper Exp $

COMMENT=		GNOME accessibility interface

GNOME_PROJECT=		at-spi
GNOME_VERSION=		1.32.0
REVISION=	0

SHARED_LIBS +=	spi                  0.0      # .10.11
SHARED_LIBS +=	loginhelper          0.0      # .0.0
SHARED_LIBS +=	cspi                 0.0      # .10.11

HOMEPAGE=	http://developer.gnome.org/projects/gap/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst atk-1.0 c cairo dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb z xcb-render xcb-render-util bonobo-2
WANTLIB += bonobo-activation gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	::x11/gnome/libbonobo \
		::x11/gtk+2

MODGCONF2_SCHEMAS_DIR=	at-spi
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--enable-gtk-doc=no

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

REGRESS_IS_INTERACTIVE=	x11

FAKE_FLAGS=	default_sessiondir=${PREFIX}/share/examples/at-spi/xdg/autostart \
		referencetopdir=${PREFIX}/share/doc/at-spi/reference

.include <bsd.port.mk>
