# $OpenBSD: Makefile,v 1.49 2019/11/03 14:37:51 ajacoutot Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-8.0
REVISION=	3

CATEGORIES=	x11

HOMEPAGE=	http://virt-manager.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 avahi-client avahi-common c cairo cairo-gobject
WANTLIB += crypto curl dbus-1 epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += harfbuzz hogweed iconv idn2 intl jpeg lz4 lzma m nettle
WANTLIB += nghttp2 ogg opus p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pulse pulse-mainloop-glib
WANTLIB += sasl2 sndfile spice-client-glib-2.0 spice-client-gtk-3.0
WANTLIB += ssh2 ssl tasn1 unistring util virt virt-glib-1.0 vorbis
WANTLIB += vorbisenc xcb xcb-render xcb-shm xml2 z

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

LIB_DEPENDS=	devel/libvirt-glib \
		x11/gtk-vnc \
		x11/spice-gtk>=0.35
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

MODULES=	textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-update-mimedb
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
