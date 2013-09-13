# $OpenBSD: Makefile,v 1.11 2013/09/13 08:22:48 ajacoutot Exp $

# from upstream, removed at next update
MASTER_SITES0=		https://github.com/FreeRDP/Remmina/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		569d9bb702d06c061dfbbf3c590d57ea83a04369.diff:0 \
			f7d1038ba358a295fb46c681db5c47e4ead97306.diff:0

SHARED_ONLY?=		Yes

COMMENT=		GTK+2 remote desktop client

V=			1.0.0
DISTNAME=		Remmina-${V}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/FreeRDP-Remmina-356c033

REVISION=		5

CATEGORIES=		x11 net

HOMEPAGE=		http://remmina.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 atk-1.0 c cairo freerdp-channels freerdp-codec
WANTLIB += freerdp-core freerdp-gdi freerdp-kbd freerdp-rail gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gnutls gobject-2.0 gthread-2.0 gtk-3 jpeg pango-1.0
WANTLIB += pthread ssh telepathy-glib vte2_90 xkbfile z

MASTER_SITES=		https://github.com/FreeRDP/Remmina/downloads/

MODULES=		devel/cmake \
			devel/gettext \
			textproc/intltool

BUILD_DEPENDS=		net/avahi,-gtk3,no_mono,no_qt3,no_qt4

LIB_DEPENDS=		devel/vte3 \
			security/libssh \
			security/gnutls \
			x11/freerdp>=1.0 \
			net/telepathy/telepathy-glib \
			x11/gnome/libgnome-keyring

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+2,-guic

CFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

# -lgnutls
CONFIGURE_ARGS =+	-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

# Only used by Ubuntu's Unity.
CONFIGURE_ARGS+=	-DWITH_APPINDICATOR=OFF

.include <bsd.port.mk>
