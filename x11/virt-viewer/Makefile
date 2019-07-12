# $OpenBSD: Makefile,v 1.46 2019/07/12 20:51:23 sthen Exp $

BROKEN-hppa=	build stuck on virt-viewer-window.c

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-8.0
REVISION=	0

CATEGORIES=	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += avahi-client avahi-common c cairo cairo-gobject crypto curl
WANTLIB += dbus-1 epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0 harfbuzz
WANTLIB += hogweed iconv idn2 intl jpeg lz4 lzma m nettle nghttp2 ogg
WANTLIB += opus orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pulse pulse-mainloop-glib sasl2
WANTLIB += sndfile spice-client-glib-2.0 spice-client-gtk-3.0 ssh2 ssl
WANTLIB += tasn1 unistring util virt virt-glib-1.0 vorbis vorbisenc xcb
WANTLIB += xcb-render xcb-shm xml2 z

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
