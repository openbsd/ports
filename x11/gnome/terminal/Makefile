# $OpenBSD: Makefile,v 1.24 2007/06/26 19:59:33 martynas Exp $

COMMENT=	"GNOME terminal"

DISTNAME=	gnome-terminal-2.18.1
CATEGORIES=	x11/gnome

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xft Xi Xinerama Xrandr Xrender art_lgpl_2 \
		atk-1.0 audiofile bonobo-2 bonobo-activation bonoboui-2 \
		c cairo crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0 \
		pangoxft-1.0 png popt pthread ssl util xml2 z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-terminal/2.18/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=	:scrollkeeper->=0.3.12:textproc/scrollkeeper \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		startup-notification-1::devel/startup-notification \
		vte.>=11::devel/vte

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-widget=vte \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-terminal
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
