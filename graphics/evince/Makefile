# $OpenBSD: Makefile,v 1.2 2006/08/02 10:10:35 espie Exp $

COMMENT=	"document viewer for multiple document formats"

DISTNAME=	evince-0.5.2
CATEGORIES=	graphics print

HOMEPAGE=	http://www.gnome.org/projects/evince/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evince/0.5/}

MODULES=	devel/gettext
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:pkgconfig-*:devel/pkgconfig \
		:gnome-doc-utils-*:x11/gnome/doc-utils \
		:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base
LIB_DEPENDS=	poppler.>=1,poppler-glib.>=1::print/poppler \
		gnomeui-2.0.0::x11/gnome/libgnomeui \
		esd.>=2::audio/esound \
		audiofile::devel/libaudiofile
RUN_DEPENDS=	:scrollkeeper-*:textproc/scrollkeeper \
		:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base

WANTLIB=	freetype crypto c Xext fontconfig pthread SM ICE \
		Xrender X11 m ssl z \
		gnomevfs-2.0.0 gnome-2.0.0 glib-2.0.0.0 gnome-keyring png \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 \
		bonoboui-2.0.0 popt gdk-x11-2.0.0.0 gnomecanvas-2.0.0 xml2 \
		ORBit-2.0.0 tiff glitz ORBitCosNaming-2.0.0 \
		gtk-x11-2.0.0.0 cairo gdk_pixbuf-2.0.0.0 \
		gthread-2.0.0.0 bonobo-activation art_lgpl_2 jpeg \
		bonobo-2.0.0 gobject-2.0.0.0 atk-1.0.0.0 glade-2.0.0.0 \
		gconf-2.0.0 gmodule-2.0.0.0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evince/ \
		--disable-schemas-install \
		--disable-nautilus \
		--disable-gnome-print \
		--enable-pixbuf \
		--enable-dvi
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
