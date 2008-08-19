# $OpenBSD: Makefile,v 1.18 2008/08/19 22:28:11 jasper Exp $

COMMENT=		Gnome/Bonobo component for spell checking

GNOME_PROJECT=		gnome-spell
GNOME_VERSION=		1.0.8
CATEGORIES=    		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt ssl stdc++ util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		aspell.>=15::textproc/aspell/core \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_FLAGS=		XGETTEXT="${LOCALBASE}/bin/xgettext"
SUBST_VARS=		VERSION

post-install:
	sed -e "s,@LOCALBASE@,${LOCALBASE},g" ${WRKSRC}/gnome-spell/GNOME_Spell.server > ${PREFIX}/lib/bonobo/servers/GNOME_Spell.server

.include <bsd.port.mk>
