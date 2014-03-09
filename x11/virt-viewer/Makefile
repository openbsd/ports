# $OpenBSD: Makefile,v 1.12 2014/03/09 20:21:29 jasper Exp $

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-0.6.0
CATEGORIES=	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-client avahi-common c cairo cairo-gobject celt051
WANTLIB += crypto curl dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += harfbuzz hogweed idn jpeg m nettle
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 spice-controller ssh2 ssl tasn1
WANTLIB += util virt xcb xcb-render xcb-shm xml2 z graphite2
WANTLIB += asn1 com_err gssapi heimbase krb5 roken wind

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
