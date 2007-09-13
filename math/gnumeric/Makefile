# $OpenBSD: Makefile,v 1.21 2007/09/13 21:58:58 martynas Exp $

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.6.3
CATEGORIES=    		math

HOMEPAGE=		http://www.gnome.org/projects/gnumeric/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 audiofile \
		bonobo-2 bonobo-activation bonoboui-2 bz2 c cairo crypto \
		dbus-1 dbus-glib-1 esd expat fontconfig freetype gconf-2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomeprint-2-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 perl png popt \
		pthread ssl util z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnumeric/1.6/}

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:yelp-*:x11/gnome/yelp
LIB_DEPENDS=		art_lgpl_2.>=5.19::graphics/libart \
			glade-2.0.>=0.8::devel/libglade2 \
			gnomeui-2.>=1800::x11/gnome/libgnomeui \
			gnomeprintui-2-2.>=2.0::x11/gnome/libgnomeprintui \
			goffice-1.>=0.0::devel/goffice \
			gsf-1.>=114.3,gsf-gnome-1.>=114.3::devel/libgsf,-gnome \
			xml2.>=9.5::textproc/libxml

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
DESKTOP_FILES=		Yes
CONFIGURE_ARGS=		--with-gnome \
			--without-gda \
			--without-gb \
			--without-psiconv \
			--without-paradox \
			--without-long-double \
			--without-python \
			--with-gconf-schema-file-dir="${LOCALBASE}/share/schemas/gnumeric"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		VERSION

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
