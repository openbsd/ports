# $OpenBSD: Makefile,v 1.19 2015/05/05 17:00:21 sthen Exp $

COMMENT=	GTK client and libraries for SPICE remote desktop servers

DISTNAME=	spice-gtk-0.28
CATEGORIES=	x11 net
REVISION=	1

SHARED_LIBS +=  spice-client-glib-2.0     2.0 # 13.0
SHARED_LIBS +=  spice-client-gtk-3.0      1.2 # 4.0
SHARED_LIBS +=  spice-controller          0.1 # 0.0

HOMEPAGE=	http://www.spice-space.org/page/Spice-Gtk

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB += cairo-gobject crypto dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gthread-2.0 gtk-3 harfbuzz jpeg m
WANTLIB += opus orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sasl2 ssl xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	${HOMEPAGE}/../../download/gtk/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

MODPY_RUNDEP=	No

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection \
		devel/py-parsing \
		devel/spice-protocol \
		sysutils/usbutils

RUN_DEPENDS=	devel/spice-protocol \
		sysutils/usbutils

LIB_DEPENDS=	audio/opus \
		multimedia/gstreamer1/plugins-base \
		security/cyrus-sasl2 \
		x11/gtk+3

USE_GMAKE=	Yes

MODGNU_CONFIG_GUESS_DIRS= \
		${WRKSRC} \
		${WRKSRC}/spice-common \
		${WRKSRC}/spice-common/spice-protocol

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-smartcard \
		--disable-usbredir \
		--enable-introspection \
		--enable-vala \
		--with-audio=gstreamer

# XXX: Requires new phodav port
CONFIGURE_ARGS+=--disable-webdav
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODPY_ADJ_FILES=spice-common/spice_codegen.py

.include <bsd.port.mk>
