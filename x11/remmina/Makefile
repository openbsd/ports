# $OpenBSD: Makefile,v 1.2 2012/02/24 13:48:26 ajacoutot Exp $

# from upstream, removed at next update
MASTER_SITES0=		https://github.com/FreeRDP/Remmina/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		569d9bb702d06c061dfbbf3c590d57ea83a04369.diff:0 \
			f7d1038ba358a295fb46c681db5c47e4ead97306.diff:0

SHARED_ONLY?=		Yes

COMMENT-main=		GTK+2 remote desktop client
COMMENT-rdp=		GTK+2 remote desktop client, RDP plugin

V=			1.0.0
DISTNAME=		Remmina-${V}
WRKDIST=		${WRKDIR}/FreeRDP-Remmina-356c033

PKGNAME-main=		${DISTNAME:L}
PKGNAME-rdp=		remmina-plugins-rdp-${V}

CATEGORIES=		x11 net

HOMEPAGE=		http://remmina.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


MASTER_SITES=		https://github.com/FreeRDP/Remmina/downloads/

MODULES=		devel/cmake \
			devel/gettext \
			textproc/intltool

MULTI_PACKAGES=		-main -rdp

cWANTLIB += atk-1.0 cairo gdk-3 glib-2.0 gtk-3 pango-1.0

WANTLIB-main += ${cWANTLIB} intl # XXX no iconv?
WANTLIB-main += X11 c gcrypt gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gnome-keyring
WANTLIB-main += gobject-2.0 gthread-2.0 pthread vte2_90 jpeg z telepathy-glib

WANTLIB-rdp += ${cWANTLIB}
WANTLIB-rdp += freerdp-channels freerdp-codec freerdp-core freerdp-gdi
WANTLIB-rdp += freerdp-kbd freerdp-rail

BUILD_DEPENDS=		net/avahi,-gtk3

LIB_DEPENDS-main=	devel/vte3 \
			net/telepathy/telepathy-glib \
			x11/gnome/libgnome-keyring

RUN_DEPENDS-main=	devel/desktop-file-utils \
			x11/gtk+2,-guic

RUN_DEPENDS-rdp=	${BASE_PKGPATH},-main
LIB_DEPENDS-rdp=	x11/gtk+3 \
			x11/freerdp>=1.0

# pax_global_header
TAR=			${LOCALBASE}/bin/gtar
BUILD_DEPENDS	+=	archivers/gtar

CFLAGS +=		-pthread

# Only useed by Ubuntu's Unity.
CONFIGURE_ARGS+=	-DWITH_APPINDICATOR=OFF

# This needs the grantpt(3) and alike functions.
CONFIGURE_ARGS+=	-DWITH_LIBSSH=OFF

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/remmina-plugins/rdp/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/telepathy/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/vnc/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/vnc/libvncserver/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/xdmcp/CMakeLists.txt \
		${WRKSRC}/remmina/CMakeLists.txt

.include <bsd.port.mk>
