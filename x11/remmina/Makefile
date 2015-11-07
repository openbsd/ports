# $OpenBSD: Makefile,v 1.18 2015/11/07 13:32:35 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GTK+3 remote desktop client

V=			1.1.1
DISTNAME=		remmina-${V}

GH_TAGNAME=		v${V}
GH_PROJECT=		Remmina
GH_ACCOUNT=		FreeRDP

CATEGORIES=		x11 net

HOMEPAGE=		https://freerdp.github.io/Remmina/index.html

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext atk-1.0 avahi-client avahi-common avahi-ui-gtk3
WANTLIB += c cairo freerdp freerdp-client gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gthread-2.0 gtk-3 pango-1.0 pthread ssh ssh_threads
WANTLIB += telepathy-glib vncclient vte-2.91 xkbfile

MODULES=		devel/cmake \
			devel/gettext

LIB_DEPENDS=		devel/vte3 \
			net/avahi,-gtk3,no_mono,no_qt3,no_qt4 \
			net/libvncserver \
			security/libssh \
			x11/freerdp \
			net/telepathy/telepathy-glib \
			x11/gnome/libgnome-keyring

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS=		-DWITH_SSE2=ON
.else
CONFIGURE_ARGS=		-DWITH_SSE2=OFF
.endif

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

# Only used by Ubuntu's Unity.
CONFIGURE_ARGS+=	-DWITH_APPINDICATOR=OFF

.include <bsd.port.mk>
