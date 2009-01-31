# $OpenBSD: Makefile,v 1.1.1.1 2009/01/31 22:46:07 jasper Exp $

COMMENT=		database administration GUI

GNOME_PROJECT=		mergeant
GNOME_VERSION=		0.67
CATEGORIES+=		databases

HOMEPAGE=		http://www.gnome-db.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo cdt crypto db dbus-1 dbus-glib-1 expat fam
WANTLIB += fontconfig freetype gailutil gconf-2 gcrypt gda-3.0
WANTLIB += gdasql-3.0 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnomecanvas-2 gnomevfs-2
WANTLIB += gobject-2.0 goocanvas gpg-error graph gthread-2.0 gtk-x11-2.0
WANTLIB += gvc ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pathplan
WANTLIB += pcre pixman-1 png pthread rpcsvc ssl stdc++ util xml2 z

BUILD_DEPENDS=		::textproc/rarian
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::textproc/rarian
LIB_DEPENDS=		gnomedb-3.0,gnomedb_extra-3.0,gnomedb_goo-3.0::x11/gnome/libgnomedb

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-update-mimedb
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"


.include <bsd.port.mk>
