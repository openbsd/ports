# $OpenBSD: Makefile,v 1.33 2009/08/10 06:31:08 kili Exp $

COMMENT=		library for loading GLADE interface files at runtime

GNOME_VERSION=		2.6.4
GNOME_PROJECT=		libglade
PKGNAME=		libglade2-${GNOME_VERSION}p0
SHARED_LIBS +=	glade-2.0            1.0      # .0.8

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread-stubs xcb z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			xml2.>=7:libxml->=2.6.16p6:textproc/libxml

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
