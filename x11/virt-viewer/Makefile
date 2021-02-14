# $OpenBSD: Makefile,v 1.54 2021/02/14 16:44:33 ajacoutot Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-9.0
REVISION=	1

CATEGORIES=	x11

HOMEPAGE=	http://virt-manager.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject crypto curl epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtk-vnc-2.0
WANTLIB += gvnc-1.0 harfbuzz hogweed iconv icudata icuuc idn2
WANTLIB += intl jpeg json-glib-1.0 lz4 lzma m nettle nghttp2 opus
WANTLIB += orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pcre2-8 pixman-1 png sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 ssh2 ssl tasn1 unistring util
WANTLIB += virt virt-glib-1.0 vte-2.91 xcb xcb-render xcb-shm
WANTLIB += xml2 yajl z

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
