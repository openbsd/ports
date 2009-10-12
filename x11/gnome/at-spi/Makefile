# $OpenBSD: Makefile,v 1.23 2009/10/12 18:10:37 jasper Exp $

COMMENT=		GNOME accessibility interface

GNOME_PROJECT=		at-spi
GNOME_VERSION=		1.28.0

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
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	at-spi
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# not enabled in X.org
CONFIGURE_ARGS+=	--disable-xevie

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
