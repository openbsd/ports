# $OpenBSD: Makefile,v 1.26 2010/10/18 13:18:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		2.24.0

REVISION=		10

SHARED_LIBS +=  gtkhex               1.0      # .0.0
CATEGORIES=		sysutils editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt pthread ssl util xml2 z \
		pthread-stubs xcb \
		gcrypt gpg-error xcb-render xcb-render-util \
		gnomeui-2 gnomeprintui-2-2 \
		canberra ltdl ogg vorbis vorbisfile

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		::x11/gnome/libgnomeui \
			::x11/gnome/libgnomeprintui

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	ghex2

CONFIGURE_ARGS+=	${ENABLE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
