# $OpenBSD: Makefile,v 1.12 2006/01/19 17:22:43 steven Exp $

COMMENT=		"GNOME utility programs"

DISTNAME=		gnome-utils-2.10.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xext Xft Xrender \
		art_lgpl_2 atk-1.0.0.0 bonobo-2 bonobo-activation bonoboui-2 c \
		fontconfig freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-desktop-2 \
		gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 popt pthread \
		gnomeprint-2-2 glade-2.0.0.0 startup-notification-1 xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-utils/2.10/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeui-2.200::x11/gnome/libgnomeui \
			panel-applet-2::x11/gnome/panel \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

MODULES=		devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-utils
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
