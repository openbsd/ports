# $OpenBSD: Makefile,v 1.14 2014/04/21 22:33:58 ajacoutot Exp $

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-0.6.0
REVISION=	1
CATEGORIES=	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-client avahi-common c cairo cairo-gobject crypto
WANTLIB += curl dbus-1 expat ffi fontconfig freetype gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-0.10 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0 harfbuzz hogweed
WANTLIB += idn jpeg m nettle opus p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 spice-client-glib-2.0 spice-client-gtk-3.0 spice-controller
WANTLIB += ssh2 ssl tasn1 util virt xcb xcb-render xcb-shm xml2
WANTLIB += z

LIB_DEPENDS=	sysutils/libvirt \
		x11/gtk-vnc \
		x11/spice-gtk>=0.22
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic \
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
	cd ${WRKSRC}/icons/${s}x${s}/ && ${MAKE_ENV} ${MAKE_PROGRAM} install-iconDATA
.endfor
	rm -r ${PREFIX}/share/icons/hicolor/apps/
	${INSTALL_SCRIPT} ${WRKSRC}/data/spice-xpi-client-remote-viewer \
		${PREFIX}/libexec/

.include <bsd.port.mk>
