# $OpenBSD: Makefile,v 1.1.1.1 2012/09/18 08:32:45 jasper Exp $

COMMENT=	graphics viewer for KVM guest displays

DISTNAME=	virt-viewer-0.5.4
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
WANTLIB += avahi-common c cairo cairo-gobject crypto curl dbus-1
WANTLIB += drm expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-3 gtk-vnc-2.0 gvnc-1.0 hogweed
WANTLIB += idn m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sasl2 ssh2
WANTLIB += ssl stdc++ tasn1 util virt xcb xcb-render xcb-shm xml2
WANTLIB += z

LIB_DEPENDS=	sysutils/libvirt \
		x11/gtk-vnc
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

MODULES=	devel/gettext \
		textproc/intltool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gtk=3.0 \
		--without-spice-gtk \
		--disable-plugin
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
.for s in 16 22 24 32 48 256
	cd ${WRKSRC}/icons/${s}x${s}/ && ${MAKE_ENV} ${MAKE_PROGRAM} install-iconDATA
.endfor
	rm -r ${PREFIX}/share/icons/hicolor/apps/

.include <bsd.port.mk>