# $OpenBSD: Makefile,v 1.37 2019/11/03 14:07:46 jasper Exp $

COMMENT=		GTK+3 remote desktop client

# XXX: Before updating, ensure freerdp works:
# cf. http://openbsd-archive.7691.n7.nabble.com/x11-freerdp-update-to-2-0-0-rc4-tp360502p360567.html
GH_TAGNAME=		v1.2.30
GH_PROJECT=		Remmina
GH_ACCOUNT=		FreeRDP
PKGNAME=		remmina-${GH_TAGNAME:S/v//}
REVISION=		6

CATEGORIES=		x11 net

HOMEPAGE=		https://www.remmina.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext atk-1.0 avahi-client avahi-common avahi-ui-gtk3
WANTLIB += c cairo freerdp2 freerdp-client2 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 intl pango-1.0 pthread ssh
WANTLIB += telepathy-glib vncclient vte-2.91 xkbfile
WANTLIB += winpr2 soup-2.4 json-glib-1.0 crypto dbus-1 dbus-glib-1 ssl
WANTLIB += cairo-gobject fribidi pangocairo-1.0 secret-1 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/libsoup \
			devel/json-glib \
			devel/vte3 \
			net/avahi,,-gtk3 \
			net/libvncserver \
			security/libssh>=0.8.4 \
			x11/freerdp \
			x11/spice-gtk \
			x11/gnome/libsecret \
			net/telepathy/telepathy-glib

RUN_DEPENDS=		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS=		-DWITH_SSE2=ON
.else
CONFIGURE_ARGS=		-DWITH_SSE2=OFF
.endif

# Appindicator is only used by Ubuntu's Unity.
CONFIGURE_ARGS+=	-DWITH_APPINDICATOR=OFF \
			-DCMAKE_C_FLAGS="-I${X11BASE}/include -I${LOCALBASE}/include ${CFLAGS}"

.include <bsd.port.mk>
