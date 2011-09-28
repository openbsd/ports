# $OpenBSD: Makefile,v 1.47 2011/09/28 09:51:35 jasper Exp $

COMMENT=		library for loading GLADE interface files at runtime

GNOME_VERSION=		2.6.4
GNOME_PROJECT=		libglade
PKGNAME=		libglade2-${GNOME_VERSION}
REVISION=		7
EPOCH=			0
SHARED_LIBS +=	glade-2.0            1.0      # .0.8

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread-stubs xcb z gthread-2.0 xcb-render gdk-x11-2.0 \
		gdk_pixbuf-2.0 gtk-x11-2.0 xml2>=7 GL Xxf86vm drm xcb-shm

MODULES=		devel/gettext \
			lang/python \
			x11/gnome
LIB_DEPENDS=		x11/gtk+2 \
			textproc/libxml>=2.6.16p6

CONFIGURE_STYLE= 	gnu

REGRESS_IS_INTERACTIVE= x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
