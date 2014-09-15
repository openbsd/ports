# $OpenBSD: Makefile,v 1.13 2014/09/15 07:17:50 jasper Exp $

### from upstream, removed at next update
# +patch-remmina_src_remmina_protocol_widget_c
DIST_SUBDIR=		remmina
MASTER_SITES0=		https://github.com/FreeRDP/Remmina/commit/
PATCH_DIST_STRIP=	-p1
COMMIT_ID=		569d9bb7 f7d1038b 503a008e 13f20367 3ebdd6e7 \
			97c2af8c 84327f81 c1ef3a16 6ee20289 b2277827 \
			1901a1e9 1901a1e9 fe1b698e 348e01d2 1560d633
.for i in ${COMMIT_ID}
PATCHFILES +=		$i.patch:0
.endfor
###

SHARED_ONLY?=		Yes

COMMENT=		GTK+3 remote desktop client

V=			1.0.0
DISTNAME=		Remmina-${V}
PKGNAME=		${DISTNAME:L}
WRKDIST=		${WRKDIR}/FreeRDP-Remmina-356c033

REVISION=		7

CATEGORIES=		x11 net

HOMEPAGE=		http://remmina.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext atk-1.0 c cairo freerdp-channels freerdp-codec
WANTLIB += freerdp-core freerdp-gdi freerdp-kbd freerdp-rail gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gnutls gobject-2.0 gthread-2.0 gtk-3 jpeg pango-1.0
WANTLIB += pthread ssh telepathy-glib vte2_90 xkbfile z

MASTER_SITES=		https://github.com/downloads/FreeRDP/Remmina/

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
