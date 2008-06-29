# $OpenBSD: Makefile,v 1.14 2008/06/29 20:44:51 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	document viewer for multiple document formats
COMMENT-djvu=	evince document viewer backend for djvu documents
COMMENT-dvi=	evince document viewer backend for dvi documents

V=		2.22.1.1
DISTNAME=	evince-${V}
CATEGORIES=	graphics print

PKGNAME-main=	${DISTNAME}p1
PKGNAME-djvu=	evince-djvu-${V}p0
PKGNAME-dvi=	evince-dvi-${V}p0

SHARED_LIBS=	evbackend	0.0 # .0.0

HOMEPAGE=	http://www.gnome.org/projects/evince/

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evince/${V:C,\.[0-9]\.[0-9]*$,,}/}

MODULES=	devel/gettext textproc/intltool

BUILD_DEPENDS=	:gnome-doc-utils-*:x11/gnome/doc-utils \
		:ghostscript-*:print/ghostscript/gnu \
		::x11/gnome/icon-theme

MULTI_PACKAGES=	-main -djvu -dvi

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 audiofile bonobo-2 \
		bonobo-activation cairo crypto dbus-1 dbus-glib-1 \
		esd expat fontconfig freetype gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt ssl util xml2 z

WANTLIB-main=		${WANTLIB} ICE SM art_lgpl_2 bonoboui-2 c gailutil \
			glade-2.0 gnome-keyring gnomecanvas-2 jpeg pthread \
			tiff
LIB_DEPENDS-main=	gnomeui-2.>=2000::x11/gnome/libgnomeui \
			poppler.>=3,poppler-glib.>=3::print/poppler \
			${MODGETTEXT_LIB_DEPENDS}
RUN_DEPENDS-main=	:scrollkeeper-*:textproc/scrollkeeper \
			:shared-mime-info-*:misc/shared-mime-info \
			:ghostscript-*:print/ghostscript/gnu \
			::x11/gnome/icon-theme \
			:yelp-*:x11/gnome/yelp

WANTLIB-djvu=		${WANTLIB} jpeg
LIB_DEPENDS-djvu=	evbackend::${BASE_PKGPATH} \
			djvulibre::graphics/djvulibre \
			${MODGETTEXT_LIB_DEPENDS}

WANTLIB-dvi=		${WANTLIB}
LIB_DEPENDS-dvi=	evbackend::${BASE_PKGPATH} \
			kpathsea::print/texlive/base \
			${MODGETTEXT_LIB_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-comics \
		--disable-impress \
		--disable-nautilus \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--enable-djvu \
		--enable-dvi \
		--enable-pixbuf \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evince/
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"


USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
