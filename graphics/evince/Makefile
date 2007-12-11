# $OpenBSD: Makefile,v 1.10 2007/12/11 10:08:18 landry Exp $

COMMENT=	document viewer for multiple document formats

V=		2.20.2
DISTNAME=	evince-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics print

HOMEPAGE=	http://www.gnome.org/projects/evince/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/evince/${V:C,\.[0-9]*$,,}/}

MODULES=	devel/gettext

BUILD_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:gnome-doc-utils-*:x11/gnome/doc-utils \
		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	audiofile::devel/libaudiofile \
		djvulibre::graphics/djvulibre \
		esd.>=2::audio/esound \
		gnome-keyring.>=2::x11/gnome/keyring \
		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
		gnomeui-2.>=2000::x11/gnome/libgnomeui \
		gnomevfs-2.>=2000::x11/gnome/vfs2 \
		kpathsea::print/texlive/base \
		poppler.>=3,poppler-glib.>=3::print/poppler
RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu \
		:scrollkeeper-*:textproc/scrollkeeper \
		:shared-mime-info-*:misc/shared-mime-info

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnomecanvas-2 gnomeprint-2-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre png popt pthread ssl tiff util xml2 z 

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nautilus \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--enable-djvu \
		--enable-dvi \
		--enable-pixbuf \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evince/ \
		--with-print=gtk
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"


USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
