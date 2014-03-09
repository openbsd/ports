# $OpenBSD: Makefile,v 1.11 2014/03/09 22:28:04 ajacoutot Exp $

COMMENT=	GTK client and libraries for SPICE remote desktop servers

DISTNAME=	spice-gtk-0.23
CATEGORIES=	x11 net

SHARED_LIBS +=  spice-client-glib-2.0     1.0 # 12.0
SHARED_LIBS +=  spice-client-gtk-3.0      1.0 # 4.0
SHARED_LIBS +=  spice-controller          0.0 # 0.0

HOMEPAGE=	http://www.spice-space.org/page/Spice-Gtk

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/../../download/gtk/
EXTRACT_SUFX=	.tar.bz2

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject com_err crypto dbus-1 expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gssapi gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-3 harfbuzz heimbase
WANTLIB += jpeg krb5 m opus pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs roken sasl2
WANTLIB += ssl wind xcb xcb-render xcb-shm xml2 z

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
