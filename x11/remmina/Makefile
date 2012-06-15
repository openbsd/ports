# $OpenBSD: Makefile,v 1.5 2012/06/15 08:30:24 ajacoutot Exp $

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

REVISION=		2

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

# XXX no iconv?
WANTLIB += atk-1.0 cairo gdk-3 glib-2.0 gtk-3 pango-1.0
WANTLIB += X11 c gcrypt gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gthread-2.0 pthread vte2_90 jpeg z telepathy-glib
WANTLIB += util xkbfile ssh freerdp-kbd freerdp-rail
WANTLIB += freerdp-channels freerdp-codec freerdp-core freerdp-gdi

BUILD_DEPENDS=		net/avahi,-gtk3

LIB_DEPENDS=		devel/vte3 \
			security/libssh \
			x11/freerdp>=1.0 \
			net/telepathy/telepathy-glib \
			x11/gnome/libgnome-keyring

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+2,-guic

# pax_global_header
TAR=			${LOCALBASE}/bin/gtar
BUILD_DEPENDS	+=	archivers/gtar

CFLAGS +=		-pthread

# Only useed by Ubuntu's Unity.
CONFIGURE_ARGS+=	-DWITH_APPINDICATOR=OFF

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/remmina-plugins/nx/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/rdp/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/telepathy/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/vnc/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/vnc/libvncserver/CMakeLists.txt \
		${WRKSRC}/remmina-plugins/xdmcp/CMakeLists.txt \
		${WRKSRC}/remmina/CMakeLists.txt

.include <bsd.port.mk>
