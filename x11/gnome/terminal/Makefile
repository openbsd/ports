# $OpenBSD: Makefile,v 1.16 2005/11/13 06:29:05 marcm Exp $

COMMENT=		"GNOME terminal"

DISTNAME=		gnome-terminal-2.10.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xft Xext \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig freetype \
		gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 jpeg m ncurses pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 popt pthread ssl xml2 z \
		pangocairo-1.0.1000.0 cairo glitz png

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-terminal/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			startup-notification-1::devel/startup-notification \
			vte::devel/vte

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-widget=vte
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-terminal
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
