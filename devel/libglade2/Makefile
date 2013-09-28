# $OpenBSD: Makefile,v 1.51 2013/09/28 08:50:46 ajacoutot Exp $

COMMENT=		library for loading GLADE interface files at runtime

GNOME_VERSION=		2.6.4
GNOME_PROJECT=		libglade
EXTRACT_SUFX=		.tar.bz2

PKGNAME=		libglade2-${GNOME_VERSION}
EPOCH=			0
REVISION=		10

SHARED_LIBS +=  glade-2.0            1.0      # 1.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			textproc/libxml

CONFIGURE_STYLE= 	gnu

TEST_IS_INTERACTIVE=	x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
