# $OpenBSD: Makefile,v 1.13 2014/04/23 11:09:15 jasper Exp $

COMMENT=	GTK client and libraries for SPICE remote desktop servers

DISTNAME=	spice-gtk-0.25
CATEGORIES=	x11 net

SHARED_LIBS +=  spice-client-glib-2.0     1.1 # 13.0
SHARED_LIBS +=  spice-client-gtk-3.0      1.0 # 4.0
SHARED_LIBS +=  spice-controller          0.0 # 0.0

HOMEPAGE=	http://www.spice-space.org/page/Spice-Gtk

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/../../download/gtk/
EXTRACT_SUFX=	.tar.bz2

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject crypto dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstapp-0.10 gstaudio-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += gtk-3 harfbuzz jpeg m opus pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 ssl xcb xcb-render xcb-shm xml2 z

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
		multimedia/gstreamer-0.10/plugins-base \
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
		--with-audio=gstreamer \
		--disable-gtk-doc
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

MODPY_ADJ_FILES=spice-common/spice_codegen.py

.include <bsd.port.mk>
