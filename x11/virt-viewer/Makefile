# $OpenBSD: Makefile,v 1.13 2014/03/12 07:14:14 jasper Exp $

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-0.6.0
REVISION=	0
CATEGORIES=	x11

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://virt-manager.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://virt-manager.org/download/sources/virt-viewer/

USE_GMAKE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi avahi-client avahi-common c cairo cairo-gobject
WANTLIB += com_err crypto curl dbus-1 expat ffi fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error graphite2 gssapi gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0
WANTLIB += harfbuzz heimbase hogweed idn jpeg krb5 m nettle opus
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs roken sasl2 spice-client-glib-2.0
WANTLIB += spice-client-gtk-3.0 spice-controller ssh2 ssl tasn1
WANTLIB += util virt wind xcb xcb-render xcb-shm xml2 z

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
