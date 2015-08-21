# $OpenBSD: Makefile,v 1.22 2015/08/21 19:17:10 sthen Exp $

COMMENT=	graphics viewer for KVM guest displays
BROKEN-hppa=	build stuck on virt-viewer-window.c

DISTNAME=	virt-viewer-2.0
CATEGORIES=	x11
REVISION=	3

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi avahi-client
WANTLIB += avahi-common c cairo cairo-gobject crypto curl dbus-1 epoxy
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0 harfbuzz
WANTLIB += hogweed idn jpeg lzma m nettle opus orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 spice-controller ssh2 ssl tasn1 util
WANTLIB += virt xcb xcb-render xcb-shm xml2 z
WANTLIB += FLAC X11-xcb Xtst execinfo gdbm json-c ogg pulse pulse-mainloop-glib
WANTLIB += sndfile vorbis vorbisenc

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

LIB_DEPENDS=	sysutils/libvirt \
		x11/gtk-vnc \
		x11/spice-gtk>=0.22
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		misc/shared-mime-info

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gtk=3.0 \
		--disable-update-mimedb
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
.for s in 16 22 24 32 48 256
	cd ${WRKSRC}/icons/${s}x${s}/ && ${MAKE_ENV} ${MAKE_PROGRAM} install
.endfor
	rm -r ${PREFIX}/share/icons/hicolor/apps/
	${INSTALL_SCRIPT} ${WRKSRC}/data/spice-xpi-client-remote-viewer \
		${PREFIX}/libexec/

.include <bsd.port.mk>
