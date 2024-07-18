COMMENT=		GTK client and libraries for SPICE remote desktop servers

DISTNAME=		spice-gtk-0.42
EXTRACT_SUFX=		.tar.xz
REVISION=		3

CATEGORIES=		x11 net

SHARED_LIBS += spice-client-glib-2.0     6.2 # 8.8.2
SHARED_LIBS += spice-client-gtk-3.0      4.2 # 5.1.1

HOMEPAGE=		https://www.spice-space.org/spice-gtk.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo crypto epoxy gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 gtk-3 intl jpeg json-glib-1.0
WANTLIB += lz4 m opus pixman-1 sasl2 ssl wayland-client wayland-server
WANTLIB += z

SITES=			https://gitlab.freedesktop.org/spice/spice-gtk/uploads/e41347144c5d2f9947e215c894969f0e/

COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODULES=		devel/meson \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gobject-introspection \
			devel/py-parsing${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/spice-protocol \
			lang/vala \
			sysutils/usbutils \
			textproc/asciidoc \
			textproc/gtk-doc \
			wayland/wayland-protocols

RUN_DEPENDS=		sysutils/usbutils

# "Requires: spice-protocol" in spice-client-glib-2.0.pc,
# "Requires.private: gobject-introspection-1.0" in spice-client-gtk-3.0.pc.
RUN_DEPENDS +=		devel/gobject-introspection \
			devel/spice-protocol

LIB_DEPENDS=		archivers/lz4 \
			audio/opus \
			devel/json-glib \
			multimedia/gstreamer1/plugins-base \
			security/cyrus-sasl2 \
			x11/gtk+3

CONFIGURE_ARGS=		-Dsmartcard=disabled \
			-Dusbredir=disabled \
			-Dlibcap-ng=disabled

# XXX requires new phodav port
CONFIGURE_ARGS +=	-Dwebdav=disabled

# XXX requires libacl
CONFIGURE_ARGS +=	-Dpolkit=disabled

# XXX requires the makecontext function (ucontext)
CONFIGURE_ARGS +=	-Dcoroutine=gthread

# base-gcc doesn't default to c99
CFLAGS +=		-std=gnu99

# Has header "gtk-3.0/gdk/gdkwayland.h" : NO 
CFLAGS +=		-I${LOCALBASE}/include

# Has header "X11/XKBlib.h" : NO
CFLAGS +=		-I${X11BASE}/include

.include <bsd.port.mk>
