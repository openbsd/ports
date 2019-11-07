# $OpenBSD: Makefile,v 1.50 2019/11/07 10:09:58 ajacoutot Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-8.0
REVISION=	4

CATEGORIES=	x11

HOMEPAGE=	http://virt-manager.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ICE SM X11 X11-xcb Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xtst atk-1.0 atk-bridge-2.0 avahi-client avahi-common
WANTLIB += c cairo cairo-gobject crypto curl dbus-1 epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += gtk-3 gtk-vnc-2.0 gvnc-1.0 harfbuzz hogweed iconv idn2
WANTLIB += intl jpeg json-glib-1.0 lz4 lzma m nettle nghttp2 ogg
WANTLIB += opus p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pcre2-8 pixman-1 png pulse pulse-mainloop-glib
WANTLIB += sasl2 sndfile spice-client-glib-2.0 spice-client-gtk-3.0
WANTLIB += ssh2 ssl tasn1 unistring util virt virt-glib-1.0 vorbis
WANTLIB += vorbisenc vte-2.91 xcb xcb-render xcb-shm xml2 z

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

.include <bsd.port.mk>
