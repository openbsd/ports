# $OpenBSD: Makefile,v 1.49 2013/03/11 10:50:10 espie Exp $

COMMENT=		library for loading GLADE interface files at runtime

GNOME_VERSION=		2.6.4
GNOME_PROJECT=		libglade
PKGNAME=		libglade2-${GNOME_VERSION}
REVISION=		8
EPOCH=			0
SHARED_LIBS +=	glade-2.0            1.0      # .0.8

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome
LIB_DEPENDS=		x11/gtk+2 \
			textproc/libxml>=2.6.16p6

CONFIGURE_STYLE= 	gnu

TEST_IS_INTERACTIVE= x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
