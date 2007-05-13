# $OpenBSD: Makefile,v 1.21 2007/05/13 18:04:40 jasper Exp $

COMMENT=		"editor for the GConf configuration system"

DISTNAME=		gconf-editor-2.18.0
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto esd expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gconf-editor/2.18/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			dbus-1::x11/dbus \
			dbus-glib-1::x11/dbus-glib \
			gnomeui-2::x11/gnome/libgnomeui

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gconf-editor \
			--disable-schemas-install
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
