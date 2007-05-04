# $OpenBSD: Makefile,v 1.22 2007/05/04 08:40:23 bernd Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			2.6.0
DISTNAME=		libglade-${V}
PKGNAME=		libglade2-${V}p0
SHARED_LIBS +=	glade-2.0            0.8      # .0.7

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/2.6/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png z

MODULES=		devel/gettext lang/python
RUN_DEPENDS=		${MODPY_EXPAT_DEPENDS}
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
			xml2.>=7:libxml->=2.6.16p6:textproc/libxml

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
