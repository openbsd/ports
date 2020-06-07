# $OpenBSD: Makefile,v 1.53 2020/06/07 16:02:49 ajacoutot Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-9.0
REVISION=	0

CATEGORIES=	x11

HOMEPAGE=	http://virt-manager.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtk-vnc-2.0 gvnc-1.0 harfbuzz hogweed iconv icudata
WANTLIB += icuuc idn2 intl jpeg json-glib-1.0 lz4 lzma m nettle
WANTLIB += nghttp2 opus orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 ssh2 ssl tasn1 unistring util
WANTLIB += virt virt-glib-1.0 vte-2.91 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

LIB_DEPENDS=	devel/libvirt-glib \
		devel/vte3 \
		x11/gtk-vnc \
		x11/spice-gtk

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

MODULES=	textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-update-mimedb
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
