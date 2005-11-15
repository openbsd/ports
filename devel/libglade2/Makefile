# $OpenBSD: Makefile,v 1.11 2005/11/15 09:21:51 wilfried Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			2.5.1
DISTNAME=		libglade-${V}
PKGNAME=		libglade2-${V}p2
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/2.5/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrender m z \
			atk-1.0.0.0 fontconfig freetype \
			cairo glib-2.0.0.0 glitz gmodule-2.0.0.0 gobject-2.0.0.0 \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 png

MODULES=		devel/gettext
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			xml2.7:libxml->=2.6.16p6:textproc/libxml

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

# Build the libglade-convert script even if we don't have Python.
# Other ports that need it will have to have a python-expat *_DEPENDS.
post-install:
	@sed 's,@PYTHON@,${LOCALBASE}/bin/python,' ${WRKSRC}/libglade-convert.in > ${PREFIX}/bin/libglade-convert
	${INSTALL_DATA_DIR} ${PREFIX}/share/libxml2
	${INSTALL_DATA} ${FILESDIR}/libglade2.spec ${PREFIX}/share/libxml2

.include <bsd.port.mk>
