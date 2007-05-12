# $OpenBSD: Makefile,v 1.17 2007/05/12 20:52:31 jasper Exp $

COMMENT=		"lightweight GNOME text editor"
DISTNAME=		gedit-2.18.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		editors x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/gedit/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeprint-2-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt \
		pthread ssl stdc++ util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gedit/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:iso-codes-*:devel/iso-codes \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		enchant::textproc/enchant \
			gnomeprintui-2-2.>=2.0::x11/gnome/libgnomeprintui \
			gnomeui-2::x11/gnome/libgnomeui \
			gtksourceview-1.0::x11/gtksourceview
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			::devel/desktop-file-utils \
			:gnome-doc-utils-*:x11/gnome/doc-utils \
			:yelp-*:x11/gnome/yelp

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gedit \
			--disable-schemas-install \
			--disable-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -lintl -liconv"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
