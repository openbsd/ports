# $OpenBSD: Makefile,v 1.4 2013/01/27 17:47:45 jasper Exp $

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-0.5.4
REVISION=	2
CATEGORIES=	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avahi-client
WANTLIB += avahi-common c cairo cairo-gobject celt051 crypto curl
WANTLIB += dbus-1 dbus-glib-1 drm expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error gstapp-0.10 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0 hogweed idn
WANTLIB += jpeg m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 spice-controller ssh2 ssl stdc++
WANTLIB += tasn1 util virt xcb xcb-render xcb-shm xml2 z
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule
WANTLIB += icuuc

LIB_DEPENDS=	sysutils/libvirt \
		x11/gtk-vnc \
		x11/spice-gtk
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gtk=3.0 \
		--disable-plugin
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
.for s in 16 22 24 32 48 256
	cd ${WRKSRC}/icons/${s}x${s}/ && ${MAKE_ENV} ${MAKE_PROGRAM} install-iconDATA
.endfor
	rm -r ${PREFIX}/share/icons/hicolor/apps/
	${INSTALL_SCRIPT} ${WRKSRC}/data/spice-xpi-client-remote-viewer \
		${PREFIX}/libexec/

.include <bsd.port.mk>
