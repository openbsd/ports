# $OpenBSD: Makefile,v 1.6 2007/05/13 19:11:19 kili Exp $

COMMENT=	"document viewer for multiple document formats"

DISTNAME=	evince-0.8.1
PKGNAME=	${DISTNAME}
CATEGORIES=	graphics print

HOMEPAGE=	http://www.gnome.org/projects/evince/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evince/0.8/}

MODULES=	devel/gettext
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:gnome-doc-utils-*:x11/gnome/doc-utils \
		:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base
LIB_DEPENDS=	poppler.>=1,poppler-glib.>=1::print/poppler \
		gnomeui-2::x11/gnome/libgnomeui \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
		esd.>=2::audio/esound \
		audiofile::devel/libaudiofile
RUN_DEPENDS=	:scrollkeeper-*:textproc/scrollkeeper \
		:ghostscript-*:print/ghostscript/gnu \
		:teTeX_base-*:print/teTeX/base \
		:shared-mime-info-*:misc/shared-mime-info

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation bonoboui-2 \
		c cairo crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl tiff util xml2 z 

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
